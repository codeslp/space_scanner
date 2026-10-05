#!/usr/bin/env python3
"""Offline Kitchen Vision experiments. Makes no model/API calls."""
import argparse
import hashlib
import json
import math
from collections import defaultdict
from decimal import Decimal
from pathlib import Path


def emit(value, output=None):
    data = json.dumps(value, indent=2, ensure_ascii=False) + '\n'
    if output:
        Path(output).write_text(data, encoding='utf-8')
    else:
        print(data, end='')


def context_report(directory):
    rows = []
    for path in sorted(Path(directory).glob('[0-9][0-9]_*.md')):
        content = path.read_text(encoding='utf-8')
        rows.append({'file': path.name, 'characters': len(content),
                     'utf8_bytes': len(content.encode('utf-8'))})
    if not rows:
        raise ValueError('No numbered research Markdown files found')
    total = sum(row['characters'] for row in rows)
    return {'experiment': 'context_size_inventory',
            'measurement': 'Unicode characters and UTF-8 bytes; NOT model tokens',
            'production_baseline_available': False,
            'corpus_files': len(rows), 'total_characters': total,
            'total_utf8_bytes': sum(row['utf8_bytes'] for row in rows),
            'documents': rows,
            'single_document_scenarios': [
                {'file': row['file'], 'characters': row['characters'],
                 'character_reduction_vs_entire_corpus_pct':
                 round(100 * (1 - row['characters'] / total), 2)} for row in rows],
            'limitations': ['No inference calls or relevance/quality evaluation.',
                            'Production may already retrieve excerpts.',
                            'Character reductions are not dollar savings.']}


def scaled_dimensions(width, height, pixel_budget):
    if min(width, height, pixel_budget) <= 0:
        raise ValueError('Dimensions and pixel budget must be positive')
    if width * height <= pixel_budget:
        return width, height
    factor = math.sqrt(pixel_budget / (width * height))
    w, h = max(1, math.floor(width * factor)), max(1, math.floor(height * factor))
    if w * h > pixel_budget:
        if w >= h:
            w = max(1, pixel_budget // h)
        else:
            h = max(1, pixel_budget // w)
    return w, h


def image_report(directory, pixel_budget):
    from PIL import Image, ImageOps
    rows, seen = [], {}
    suffixes = {'.jpg', '.jpeg', '.png', '.webp'}
    for path in sorted(Path(directory).rglob('*')):
        if not path.is_file() or path.suffix.lower() not in suffixes:
            continue
        relative = str(path.relative_to(directory))
        digest = hashlib.sha256(path.read_bytes()).hexdigest()
        with Image.open(path) as image:
            image = ImageOps.exif_transpose(image).convert('RGB')
            width, height = image.size
            thumbnail = image.convert('L').resize((8, 8))
            pixels = list(thumbnail.get_flattened_data() if hasattr(thumbnail, 'get_flattened_data')
                          else thumbnail.getdata())
            average = sum(pixels) / len(pixels)
            ahash = sum((value >= average) << index for index, value in enumerate(pixels))
        duplicate = seen.get(digest)
        seen.setdefault(digest, relative)
        sw, sh = scaled_dimensions(width, height, pixel_budget)
        rows.append({'file': relative, 'sha256': digest, 'duplicate_of': duplicate,
                     'oriented_dimensions': [width, height],
                     'proposed_dimensions': [sw, sh],
                     'average_hash': f'{ahash:016x}',
                     'original_pixels': width * height, 'proposed_pixels': sw * sh})
    if not rows:
        raise ValueError('No supported images found')
    candidates = []
    unique = [row for row in rows if not row['duplicate_of']]
    for i, first in enumerate(unique):
        for second in unique[i + 1:]:
            distance = (int(first['average_hash'], 16) ^ int(second['average_hash'], 16)).bit_count()
            if distance <= 6:
                candidates.append({'files': [first['file'], second['file']],
                                   'hash_distance': distance, 'action': 'manual_coverage_review'})
    return {'experiment': 'image_selection_inventory', 'input_images': len(rows),
            'exact_unique_images': len(unique), 'exact_duplicates': len(rows) - len(unique),
            'pixel_budget': pixel_budget, 'images': rows,
            'approximate_similarity_candidates': candidates,
            'limitations': ['Average hash is a coarse candidate signal, not semantic equivalence.',
                            'No similar view is automatically discarded.',
                            'No image files are modified; dimensions are proposals.',
                            'Pixel reduction does not establish token or cost reduction.']}


def nonnegative(value, field):
    if isinstance(value, bool):
        raise ValueError(f'{field} must be a nonnegative number')
    number = Decimal(str(value))
    if not number.is_finite() or number < 0:
        raise ValueError(f'{field} must be finite and nonnegative')
    return number


def token_count(row, field):
    number = nonnegative(row[field], field)
    if number != number.to_integral_value():
        raise ValueError(f'{field} must be an integer')
    return number


def price_call(row, prices):
    """Total input includes cached input; output includes billed reasoning."""
    if not row.get('usage_complete', False):
        return None
    rate = prices['models'][row['model']]
    inputs = token_count(row, 'input_tokens')
    cached = token_count(row, 'cached_input_tokens')
    outputs = token_count(row, 'billed_output_tokens')
    if cached > inputs:
        raise ValueError('Cached input exceeds total input')
    extra = nonnegative(row['separate_tool_cost_usd'], 'separate_tool_cost_usd')
    return ((inputs - cached) * nonnegative(rate['input_per_million'], 'input rate')
            + cached * nonnegative(rate['cached_input_per_million'], 'cached rate')
            + outputs * nonnegative(rate['output_per_million'], 'output rate')) / Decimal(1000000) + extra


def usage_report(log_path, pricing_path):
    prices = json.loads(Path(pricing_path).read_text(encoding='utf-8'))
    if not prices.get('pricing_date') or not prices.get('source_url'):
        raise ValueError('Pricing requires a date and source URL')
    groups = defaultdict(lambda: {'calls': 0, 'unknown_cost_calls': 0,
                                 'known_cost_usd': Decimal(0), 'assessments': set()})
    count = 0
    for line in Path(log_path).read_text(encoding='utf-8').splitlines():
        if not line.strip():
            continue
        row = json.loads(line)
        cost = price_call(row, prices)
        group = groups[(row['variant'], row['step'])]
        group['assessments'].add(row['assessment_id'])
        group['calls'] += 1
        count += 1
        if cost is None:
            group['unknown_cost_calls'] += 1
        else:
            group['known_cost_usd'] += cost
    if not count:
        raise ValueError('No usage rows found')
    return {'experiment': 'provider_usage_accounting', 'calls': count,
            'pricing_date': prices['pricing_date'], 'source_url': prices['source_url'],
            'groups': [{'variant': variant, 'step': step, 'calls': group['calls'],
                        'assessments': len(group['assessments']),
                        'known_cost_usd': str(group['known_cost_usd']),
                        'unknown_cost_calls': group['unknown_cost_calls'],
                        'complete': group['unknown_cost_calls'] == 0}
                       for (variant, step), group in sorted(groups.items())],
            'limitations': ['Token-priced models only; use provider-specific adapters for other pricing.',
                            'Provider invoices remain authoritative.',
                            'Unknown usage is not treated as free. No automatic quality comparison.']}


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    sub = parser.add_subparsers(dest='command', required=True)
    context = sub.add_parser('context')
    context.add_argument('directory')
    images = sub.add_parser('images')
    images.add_argument('directory')
    images.add_argument('--pixel-budget', type=int, default=1080000)
    usage = sub.add_parser('usage')
    usage.add_argument('log')
    usage.add_argument('pricing')
    for command in (context, images, usage):
        command.add_argument('--output')
    args = parser.parse_args()
    try:
        if args.command == 'context':
            report = context_report(args.directory)
        elif args.command == 'images':
            report = image_report(args.directory, args.pixel_budget)
        else:
            report = usage_report(args.log, args.pricing)
        emit(report, args.output)
    except (ValueError, KeyError, OSError, ImportError) as error:
        parser.error(str(error))


if __name__ == '__main__':
    main()
