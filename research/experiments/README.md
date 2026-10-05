# Kitchen Vision cost experiments

Started 2026-10-04. This harness runs on macOS or Linux with Python 3.10+.
It makes no model calls and does not require credentials. It is the offline
part of the research experiments, not a live inference benchmark.

## Results available now

`context_inventory.json` inventories 17 numbered research documents from repo
snapshot `1e5d8e2cecb4f201ab2becfe20b1e4a175f19d74`. The materialized corpus
contains 1,207,899 Unicode characters (1,209,302 UTF-8 bytes).
Selecting the layout document alone reduces characters by 93.25% relative to
sending the entire corpus. Selecting the CV inventory alone reduces them by
98.65%. These are conditional context-size scenarios: production may already
retrieve excerpts, and neither relevance nor dollar savings has been established.

Seven automated checks passed in the Linux execution environment for pricing
arithmetic, incomplete telemetry, invalid usage, resize budgets, character/byte
accounting, exact duplicate detection, and retention of distinct images.
Image fixtures and pricing rates in tests are synthetic. No real kitchen images,
model accuracy, Mac GPU performance, or billed inference costs were evaluated.

## Run on the Mac mini or Zo

From the repository root:

```bash
python3 research/experiments/cost_eval.py context research
python3 -m pip install Pillow
python3 research/experiments/cost_eval.py images /absolute/path/to/kitchen-photos --pixel-budget 1080000 --output /tmp/kitchen-image-inventory.json
python3 -m unittest discover -s research/experiments -v
```

The image command inventories originals, exact duplicates, approximate similarity
candidates, and proposed resize dimensions. It does not edit images or discard
similar angles. Review similarity candidates for evidence coverage. Its 1.08 MP
default is an experimental setting, not a proven model optimum.

## Price real model usage

Export one JSONL record per actual call, including failed calls if billed:

```json
{"assessment_id":"district-a-001","variant":"baseline","step":"vision","model":"exact-provider-model-id","usage_complete":true,"input_tokens":1000,"cached_input_tokens":400,"billed_output_tokens":100,"separate_tool_cost_usd":0}
```

The numbers above demonstrate the schema and are not production measurements.
`input_tokens` includes cached input. `billed_output_tokens` includes reasoning
tokens only as required by the provider's billing semantics; do not count them
twice. Explicitly record zero cached tokens/tool cost when applicable.
Set `usage_complete` false when usage is unavailable. Such calls remain unknown,
not free. Preserve the original provider usage payload outside the repo.

Provide current verified rates as a separate JSON file:

```json
{
  "pricing_date": "DATE-VERIFIED",
  "source_url": "OFFICIAL-PROVIDER-PRICING-URL",
  "models": {
    "exact-provider-model-id": {
      "input_per_million": 2,
      "cached_input_per_million": 0.2,
      "output_per_million": 8
    }
  }
}
```

Those rates are synthetic examples. Replace every rate before pricing live usage.

```bash
python3 research/experiments/cost_eval.py usage /path/to/usage.jsonl /path/to/verified-pricing.json --output /tmp/kitchen-cost-summary.json
```

This adapter handles token-priced calls only. Per-image charges, modality-specific
rates, long-context tiers, batch discounts, or platform markups need provider-specific
normalization/adapters. Results are rate-based estimates from usage, not invoices.

## Local Mac versus cloud comparison

Hardware determines which local models fit and their speed; it does not improve
the same remotely hosted model's accuracy. An Apple-silicon Mac can be evaluated
for on-device OCR, preprocessing, and compatible local models. Model/framework
support must be checked. PyTorch supports GPU execution through its MPS backend:
https://docs.pytorch.org/docs/stable/notes/mps.html

Use the same reviewed photos and questions for:

1. The existing Zo production workflow.
2. Local Mac preprocessing plus the same cloud model.
3. Local Mac perception plus selective cloud escalation.
4. Entirely local perception, if a compatible model meets quality requirements.

Capture chip, unified memory, macOS, runtime/model versions, precision, input
dimensions, wall time, peak memory, and energy/hosting assumptions. Run repeated
trials after warmup. Compare critical-finding recall, unsupported claims, evidence
accuracy, correction time, latency, and total cost. Include physical inspection
requests for facts that no image model can establish.

## What is still needed

- Access to the actual Zo workflow or its exported code, prompts, settings, and usage logs.
- Representative kitchen captures and Callie's reviewed expected findings.
- Mac mini chip/memory details and a way to run the local benchmark there.
- Current provider rates and an explicit small live-run budget before enabling API calls.

The live inference portion has not started. No provider credentials were available
in the execution environment, and no model-call API is connected to this harness.
Keep private captures, credentials, and district logs out of Git.
