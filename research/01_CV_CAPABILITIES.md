# Computer Vision Capabilities Inventory for Kitchen Space Analysis

*Preliminary research — the "detection palette" to inform all subsequent kitchen design research*

---

## Purpose

This document catalogs what modern computer vision can and cannot detect in indoor spaces. Each subsequent kitchen design research topic will reference this palette to annotate findings with **"Visual Indicators & Detection Strategy"** sections.

---

## 1. Spatial Measurement & 3D Reconstruction

### What's Possible

| Method | Accuracy | Hardware Required | Processing | Maturity |
|--------|----------|-------------------|------------|----------|
| **iPhone/iPad LiDAR + RoomPlan** | 1–4 cm per measurement; ~5% for full room | iPhone/iPad Pro | On-device, real-time | Production |
| **Photogrammetry (COLMAP + phone video)** | 1–3 cm with ground control | Any phone + GPU | Cloud, minutes–hours | Mature |
| **DUSt3R / MUSt3R (multi-view reconstruction)** | ~10 cm RMSE | GPU server | Seconds on GPU | Research (2024–25) |
| **Depth Pro (Apple, single image)** | ~5% AbsRel (~5–15 cm at 1–3m) | GPU | 0.3s on V100 | Open weights |
| **Depth Anything V3 (multi-view)** | 23.6% better than prior SOTA | GPU | Moderate | New (Nov 2025) |
| **Metric3D v2 / UniDepth (single image)** | ~5% AbsRel on NYU-D | GPU | Seconds | Research w/ open code |
| **Reference object calibration** | <5% error on same plane | Any camera | On-device, real-time | Mature |
| **3D Gaussian Splatting** | Sub-cm for high-contrast edges | Phone + GPU | 15–30 min training | Early production |

### What This Means for Kitchen Analysis

- **Room dimensions, aisle widths, counter heights**: LiDAR is best (1–5 cm). Metric depth models are fallback (~5–15 cm).
- **Equipment spacing/clearances**: LiDAR or reference-object technique on floor plane (2–5 cm).
- **ADA compliance measurements** (34" max counter height, 40" pass-through clearance): Achievable with LiDAR. Marginal with single-image depth alone.
- **Recommended capture strategy**: LiDAR scan (if available) → multi-view photo set → single image as last resort.

### Key Limitation
LiDAR has error accumulation over large spaces (one study: 37 cm deviation on a 6.45 m wall = 5.7%). Glass, mirrors, and dark surfaces confuse the sensor.

### Sources
- [Apple RoomPlan](https://developer.apple.com/augmented-reality/roomplan/)
- [Depth Anything V3](https://depth-anything-3.github.io/)
- [Apple Depth Pro](https://machinelearning.apple.com/research/depth-pro)
- [Metric3D v2](https://arxiv.org/abs/2404.15506)
- [UniDepth (CVPR 2024)](https://openaccess.thecvf.com/content/CVPR2024/papers/Piccinelli_UniDepth_Universal_Monocular_Metric_Depth_Estimation_CVPR_2024_paper.pdf)
- [MUSt3R (CVPR 2025)](https://arxiv.org/abs/2503.01661)
- [DUSt3R](https://arxiv.org/abs/2312.14132)
- [Roboflow: Best Depth Estimation Models](https://blog.roboflow.com/depth-estimation-models/)
- [Indoor LiDAR Accuracy Study](https://www.tandfonline.com/doi/full/10.1080/16874048.2024.2408839)
- [AGS-Mesh: Indoor Room Reconstruction](https://xuqianren.github.io/ags_mesh_website/)

---

## 2. Object Detection (Identifying Kitchen Equipment)

### Best Approaches

| Model | Approach | Kitchen Applicability | Maturity |
|-------|----------|----------------------|----------|
| **Grounding DINO 1.5 / DINO-X** | Open-vocabulary (text prompt) | Best out-of-box option. Prompt with equipment names. 56.0 AP zero-shot COCO, 63.3 AP on rare classes. | Production |
| **Grounded SAM 2** (DINO + SAM 2) | Detection + pixel segmentation | Detects via text, then segments precise footprints. Best combined pipeline. | Production |
| **OWL-ViT / OWLv2** | Text or image query | Image-query mode valuable for specialized equipment (provide reference photo). | Production |
| **YOLO11 / YOLO26** | Closed-vocabulary (trained classes) | Only detects COCO classes (oven, fridge, sink, microwave). Custom training needed for commercial equipment. | Production |
| **Florence-2** | Unified VLM (detect + segment + caption) | Lightweight, handles multiple tasks. Underexplored for cluttered environments. | Production |
| **Mask2Former** | Panoptic segmentation | ADE20K model segments floor/wall/ceiling/counter/cabinet/sink/oven. Direct kitchen applicability. | Production |
| **VLMs (GPT-4o, Claude, Gemini)** | Qualitative identification | Can identify and describe equipment, spatial relationships. Poor bounding box precision. 50–60% on spatial reasoning benchmarks. | Production (qualitative) |

### What Can Be Detected Without Custom Training

**HIGH confidence** (common objects in training data): ovens, refrigerators, sinks, microwaves, tables, chairs, shelving, doors, windows, fire extinguishers, clocks, trash cans

**MEDIUM confidence** (less common but describable): hood systems, prep tables, three-compartment sinks, serving lines, walk-in cooler doors, dish machines, hand sinks, floor drains

**LOW confidence** (specialized, may need custom training): blast chillers, combi ovens, salamander broilers, tilt skillets, specific fire suppression systems, grease traps, chemical dispensers, specific NSF-rated equipment

### Custom Training Path
- **Dataset needed**: ~1,500 images per class, 15–20 classes = ~22,500–30,000 annotated images
- **Bootstrap strategy**: Use Grounding DINO zero-shot predictions as pre-annotations, manually correct → 60–80% less annotation effort
- **Training cost**: $15–$270 for GPU cloud (YOLO fine-tune on A100, 4–12 hours)
- **Annotation tools**: CVAT (free), Roboflow Annotate (free tier), Label Studio (free)

### Sources
- [Grounding DINO 1.5](https://arxiv.org/abs/2405.10300)
- [DINO-X API](https://github.com/IDEA-Research/DINO-X-API)
- [Grounded SAM 2](https://github.com/IDEA-Research/Grounded-SAM-2)
- [OWLv2 (NeurIPS 2023)](https://papers.neurips.cc/paper_files/paper/2023/file/e6d58fc68c0f3c36ae6e0e64478a69c0-Paper-Conference.pdf)
- [Ultralytics YOLO Docs](https://docs.ultralytics.com/)
- [Mask2Former (HuggingFace)](https://huggingface.co/blog/mask2former)
- [Florence-2 (CVPR 2024)](https://openaccess.thecvf.com/content/CVPR2024/papers/Xiao_Florence-2_Advancing_a_Unified_Representation_for_a_Variety_of_Vision_CVPR_2024_paper.pdf)
- [VLM Spatial Reasoning Benchmark](https://arxiv.org/html/2503.19707v1)

---

## 3. Surface & Material Classification

| Capability | Accuracy | Approach | Maturity |
|------------|----------|----------|----------|
| **Flooring type** (quarry tile, vinyl, epoxy, concrete) | 85–95% with custom model | Fine-tuned CNN (ResNet-50, EfficientNet) | Moderate |
| **Wall finish** (tile, FRP, painted, stainless) | 85–95% with custom model | Same approach | Moderate |
| **Condition: cracks** | 91–95% classification, IoU 0.88–0.93 | YOLOv8, DeepCrack, U-Net | High |
| **Condition: rust/corrosion** | F1 ~0.71 segmentation | Mask R-CNN, U-Net | High |
| **Condition: mold** | 87.5–90% classification | Fine-tuned VGG-16 | Moderate |
| **Condition: staining/discoloration** | 90%+ (binary), 70–80% (graded) | Color thresholding + anomaly detection | Moderate |
| **General cleanliness scoring** | 70–90% agreement with human assessors | CNN or color histogram analysis | Moderate |

### What This Means for Kitchen Analysis
- Can flag **visible deterioration** (cracked tile, rusted equipment, mold in corners) with high reliability
- Can classify **flooring and wall materials** to check against code requirements (requires custom training)
- **Cannot** assess structural integrity, hidden damage behind walls, or subsurface conditions
- Commercial product exists: [Tiliter Cleanliness Evaluator](https://www.tiliter.com/vision-ai-agents/cleanliness-evaluator) (1–5 scoring)

### Sources
- [Deep Learning for Building Defects (PMC)](https://pmc.ncbi.nlm.nih.gov/articles/PMC6720984/)
- [Corrosion Detection (Nature)](https://www.nature.com/articles/s41529-022-00232-6)
- [Crack Detection (Roboflow)](https://blog.roboflow.com/crack-detection/)
- [Surface Defect Inspection Review (Springer)](https://link.springer.com/article/10.1007/s10462-024-10956-3)

---

## 4. Text & Label Reading (OCR)

| Capability | Accuracy | Approach | Maturity |
|------------|----------|----------|----------|
| **Printed labels** (equipment, chemical, safety) | 95–99%+ | Off-the-shelf APIs (Google Vision, AWS Textract, PaddleOCR) | **High** |
| **Health inspection scores** (posted) | ~100% | Standard OCR | **High** |
| **GHS chemical pictograms** | High | YOLO object detection | **High** |
| **Handwritten text** | 70–85% | Specialized HTR models | Moderate |

### What This Means for Kitchen Analysis
- Can **read equipment model/serial numbers** for age and compliance checking
- Can **identify chemical labels** and verify proper storage separation
- Can **read posted inspection scores and certificates**
- Most production-ready CV capability — start here for early value

### Sources
- [Google Cloud Vision API](https://cloud.google.com/vision/docs/labels)
- [PaddleOCR](https://github.com/PaddlePaddle/PaddleOCR)
- [Dual-Engine Fusion OCR for Labels](https://www.sciencedirect.com/science/article/pii/S111001682500657X)

---

## 5. Environmental Assessment

| Capability | Accuracy | Approach | Maturity |
|------------|----------|----------|----------|
| **Lighting: qualitative** (adequate vs. insufficient) | ~85%+ estimated | Simple CNN classifier | Moderate |
| **Lighting: quantitative lux** | 50–180% error from smartphone | EXIF-based estimation | **Low** |
| **Wet floor / puddle detection** | Research-stage | FCN + Reflection Attention | Low–Moderate |
| **Grease buildup** | No published models | Custom development needed | **Low** |
| **Surface wear / smoothness** | No published models | Custom CNN on texture | **Low** |

### What This Means for Kitchen Analysis
- **Lighting**: Can flag obviously dim areas but cannot replace a lux meter for compliance verification
- **Slip hazards**: Can detect standing water from specular reflections but cannot detect grease or worn flooring reliably
- **Thermal/acoustic**: Not measurable from images. Require physical sensors.
- These are areas where the app should **recommend physical inspection** rather than attempting CV assessment

### Sources
- [Luxmeter App Accuracy Study](https://www.dialux.com/en-GB/news-detail/luxmeter-app-versus-measuring-device-are-smartphones-suitable-for-measuring-illuminance)
- [Water Hazard Detection (Springer)](https://link.springer.com/chapter/10.1007/978-3-030-01231-1_7)
- [Specularity Detection Survey](https://link.springer.com/article/10.1007/s10462-025-11233-7)

---

## 6. Existing Products in This Space

### Room Scanning (most relevant to our use case)

| Product | Accuracy | API | Pricing | Best For |
|---------|----------|-----|---------|----------|
| **Apple RoomPlan** | ±5 cm/wall | Yes (Swift) | Free (iOS SDK) | Foundational room geometry |
| **Polycam** | High | Dev mode + polyform | $39.99/yr+ | Versatile 3D capture |
| **Matterport** | ±1% (~2 cm at 10m) | Yes (GraphQL + JS SDK) | $9.99–$69/mo | Gold standard digital twins |
| **Magicplan** | 95% (100% w/ laser) | Yes (REST) | $9.99–$89.99/mo | Professional floor plans |
| **Canvas** | Professional-grade | No | $0.14–$0.20/sq ft | As-built CAD models |

### Kitchen-Specific Tools
- **Specifi**: Industry-standard commercial kitchen CAD plugin (AutoCAD/Revit). Extensive equipment catalog. Design tool, not analysis.
- **IKEA Kreativ**: Scans real kitchens from phone photos, creates interactive 3D replicas. Consumer/residential focus.
- **Allreno**: iPhone LiDAR kitchen scanning for renovation. Consumer focus.
- **No existing tool analyzes kitchens against design best practices or codes.** This is our gap.

### Facility Inspection (CV-based)
- **Intenseye**: Real-time safety monitoring via CCTV (PPE, ergonomic risk, 50+ categories). Enterprise.
- **VisionBot**: Kitchen hygiene compliance (handwashing, PPE, food handling). Enterprise.
- **DeepWalk**: ADA sidewalk inspection via iPhone LiDAR. Closest analog to our concept but exterior-only.

### Construction Documentation
- **OpenSpace**: 360° site documentation matched to BIM. Progress tracking with AI. $10K+ per project.
- **Buildots**: Hardhat-mounted 360° cameras vs. BIM. Delay prediction. Enterprise.
- **Hover**: Phone photos → measured 3D models of building exteriors. "To-the-inch" accuracy.

### Sources
- [Apple RoomPlan](https://developer.apple.com/augmented-reality/roomplan/)
- [Polycam](https://poly.cam/)
- [Matterport](https://matterport.com/)
- [Magicplan](https://magicplan.app/)
- [Canvas](https://canvas.io/)
- [Specifi](https://us.specifiglobal.com/)
- [IKEA Kreativ](https://www.ikea.com/us/en/newsroom/corporate-news/ikea-launches-new-ai-powered-digital-experience-empowering-customers-to-create-lifelike-room-designs-pub58c94890/)
- [Intenseye](https://www.intenseye.com/)
- [VisionBot](https://visionbot.com/)
- [DeepWalk](https://www.deepwalk.com/)
- [OpenSpace](https://www.openspace.ai/)
- [Buildots](https://buildots.com/)
- [Hover](https://hover.to/)

---

## 7. Detection Palette Summary

This is the quick-reference card for annotating kitchen design research topics.

### HIGH feasibility (ready to use)
- **Measure**: room dimensions, aisle widths, counter heights, doorway widths, equipment spacing (via LiDAR)
- **Identify**: major equipment (ovens, fridges, sinks, shelving, tables, hoods)
- **Read**: equipment labels, chemical labels, posted inspection scores, safety signage
- **Detect**: cracks, rust, mold, visible damage on surfaces
- **Segment**: floor area, walls, ceilings, countertops, walkways, equipment footprints

### MEDIUM feasibility (achievable with custom work)
- **Classify**: flooring type, wall finish, counter material
- **Identify**: specialized commercial equipment (combi ovens, blast chillers, tilt skillets)
- **Assess**: general cleanliness, staining/discoloration
- **Detect**: standing water/puddles on floors
- **Estimate**: lighting adequacy (qualitative only)

### LOW feasibility (requires physical inspection)
- **Measure**: exact lux/foot-candle levels
- **Detect**: grease buildup, floor slip coefficient, surface wear
- **Assess**: noise levels, temperature, ventilation airflow
- **Inspect**: hidden plumbing, electrical, structural conditions
- **Verify**: equipment internal condition, calibration, operational status

### RECOMMENDED HYBRID APPROACH
For each kitchen design criterion, the app should:
1. **Auto-detect** what CV can reliably identify (HIGH feasibility items)
2. **Flag for review** items that CV can partially assess (MEDIUM feasibility)
3. **Generate inspection checklist** for items requiring physical assessment (LOW feasibility)
4. **Use VLMs** (GPT-4o/Claude) as a reasoning layer to synthesize all detected elements into design recommendations

---

## 8. Recommended Technical Architecture

```
CAPTURE LAYER
├── Primary: iPhone/iPad LiDAR scan (RoomPlan API) → metric 3D room shell
├── Fallback: Multi-view photos → Depth Anything V3 / MUSt3R → approximate 3D
└── Minimum: Single photo → Depth Pro / Metric3D v2 → rough depth map

DETECTION LAYER
├── Equipment: Grounding DINO 1.5 (text prompts) → bounding boxes
├── Segmentation: SAM 2 (downstream of DINO) → pixel-precise equipment footprints
├── Scene parsing: Mask2Former (ADE20K) → floor/wall/ceiling/counter segmentation
├── Text: PaddleOCR / Google Vision → labels, signage, inspection scores
└── Condition: Fine-tuned YOLO/U-Net → cracks, rust, mold, damage

ANALYSIS LAYER
├── Spatial rules engine: Compare detected layout against code requirements
│   ├── ADA clearances (counter heights, aisle widths, turning radii)
│   ├── Equipment spacing (fire code, ventilation clearance)
│   └── Workflow analysis (zone identification, traffic flow)
├── VLM reasoning: GPT-4o / Claude Vision for qualitative assessment
│   ├── Overall layout quality assessment
│   ├── Workflow bottleneck identification
│   └── Natural-language recommendations
└── Inspection checklist generator: Items CV cannot assess

OUTPUT LAYER
├── Annotated floor plan with detected equipment and measurements
├── Compliance scorecard (pass/flag/fail per criterion)
├── Prioritized recommendations (code violations → best practice improvements)
└── Physical inspection checklist for items requiring on-site verification
```
