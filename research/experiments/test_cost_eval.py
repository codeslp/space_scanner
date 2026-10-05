import json
import tempfile
import unittest
from decimal import Decimal
from pathlib import Path
from cost_eval import context_report, image_report, price_call, scaled_dimensions, usage_report


class EvaluationTests(unittest.TestCase):
    def setUp(self):
        self.prices = {'models': {'test-model': {'input_per_million': 2,
                        'cached_input_per_million': 0.2, 'output_per_million': 8}},
                       'pricing_date': 'synthetic-test', 'source_url': 'synthetic-test'}
        self.row = {'model': 'test-model', 'usage_complete': True,
                    'input_tokens': 1000, 'cached_input_tokens': 400,
                    'billed_output_tokens': 100, 'separate_tool_cost_usd': 0,
                    'variant': 'baseline', 'step': 'vision', 'assessment_id': 'test'}

    def test_cached_input_is_not_double_counted(self):
        self.assertEqual(price_call(self.row, self.prices), Decimal('0.00208'))

    def test_missing_usage_is_unknown(self):
        self.assertIsNone(price_call({'usage_complete': False}, self.prices))

    def test_invalid_usage_fails(self):
        for field, value in [('cached_input_tokens', 1001), ('input_tokens', -1),
                             ('input_tokens', 1.5), ('input_tokens', True),
                             ('separate_tool_cost_usd', 'NaN')]:
            with self.subTest(field=field, value=value), self.assertRaises(ValueError):
                price_call(dict(self.row, **{field: value}), self.prices)

    def test_portrait_and_landscape_respect_budget(self):
        for width, height in [(4032, 3024), (3024, 4032), (1, 100000), (100000, 1)]:
            w, h = scaled_dimensions(width, height, 1080000)
            self.assertLessEqual(w * h, 1080000)
            self.assertLessEqual(w, width)
            self.assertLessEqual(h, height)
        self.assertEqual(scaled_dimensions(32, 32, 1080000), (32, 32))

    def test_context_measures_bytes_separately(self):
        with tempfile.TemporaryDirectory() as directory:
            Path(directory, '01_TEST.md').write_text('é', encoding='utf-8')
            result = context_report(directory)
            self.assertEqual(result['total_characters'], 1)
            self.assertEqual(result['total_utf8_bytes'], 2)

    def test_exact_duplicates_and_distinct_view_retention(self):
        from PIL import Image
        with tempfile.TemporaryDirectory() as directory:
            path = Path(directory, 'a.png')
            Image.new('RGB', (40, 30), 'white').save(path)
            Path(directory, 'b.png').write_bytes(path.read_bytes())
            Image.new('RGB', (40, 30), 'gray').save(Path(directory, 'c.png'))
            result = image_report(directory, 100)
            self.assertEqual(result['exact_duplicates'], 1)
            self.assertEqual(result['exact_unique_images'], 2)
            self.assertEqual(len(result['images']), 3)
            self.assertLessEqual(result['images'][0]['proposed_pixels'], 100)

    def test_incomplete_cost_group_is_flagged(self):
        with tempfile.TemporaryDirectory() as directory:
            log, prices = Path(directory, 'usage.jsonl'), Path(directory, 'prices.json')
            log.write_text(json.dumps(self.row) + '\n' + json.dumps(dict(self.row, usage_complete=False)))
            prices.write_text(json.dumps(self.prices))
            group = usage_report(log, prices)['groups'][0]
            self.assertFalse(group['complete'])
            self.assertEqual(group['unknown_cost_calls'], 1)
            self.assertEqual(Decimal(group['known_cost_usd']), Decimal('0.00208'))


if __name__ == '__main__':
    unittest.main()
