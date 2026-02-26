# Space Scanner — K-12 Kitchen Design Research Plan

## Vision
An app that takes visual input of a K-12 kitchen/storage space and uses ergonomics and kitchen design best practices to analyze what is good and bad about the space, providing actionable recommendations.

---

## Research Sub-Topics (Each Its Own Project)

### 1. Regulatory & Code Landscape
Deep dive into the layered regulatory environment for K-12 school kitchens.
- USDA Food and Nutrition Service guidelines (NSLP, SBP, HACCP requirements)
- FDA Food Code (model code adopted by states)
- Building codes (IBC), mechanical codes (IMC), plumbing codes (IPC)
- Fire protection (NFPA 96 — hood/duct/suppression for commercial cooking)
- Ventilation (ASHRAE 62.1)
- ADA Standards for Accessible Design (Section 804 — kitchens)
- State and local health department variations
- NSF/ANSI equipment sanitation standards (2, 4, 7, 51)

### 2. Ergonomics & Worker Safety
Research the physical demands on school kitchen workers and evidence-based design solutions.
- Work surface height guidelines (4–6 inches below elbow)
- Reach zone tiers (primary 0–14", secondary, tertiary)
- Optimal vertical storage zones (30–60" above floor)
- OSHA guidance for commercial kitchens (General Duty Clause, eTools)
- NIOSH Revised Lifting Equation for manual handling
- Academic research: 67–91% of kitchen workers report MSDs (lower back, shoulders, wrists most affected)
- Anti-fatigue matting, task rotation, mechanical aids
- UC Berkeley Dining Services Ergonomic Design Guidelines

### 3. Kitchen Layout & Workflow Design
How K-12 kitchens should be organized for optimal flow.
- Layout types: assembly line, zoned, galley, island
- Workflow sequence: receiving → storage → prep → cooking → serving → cleanup
- Work triangle evolution into zone-based design
- Traffic flow separation (staff vs. students, raw vs. cooked, clean vs. dirty)
- Serving line design and student throughput (short lunch periods, bottlenecks)
- Central kitchen vs. on-site kitchen models

### 4. Storage Design (Dry, Cold, Chemical, Equipment)
Storage is a critical pain point — 88% of districts lack needed equipment (Pew/RWJF).
- Walk-in cooler/freezer sizing and placement
- Dry storage best practices (FIFO, shelving heights, clearances)
- USDA commodity storage requirements
- Chemical storage separation (health code requirements)
- Equipment storage and staging areas
- Receiving area design (dock, staging, inspection)

### 5. Food Safety by Design
How kitchen layout and design directly affect food safety outcomes.
- HACCP critical control points mapped to physical spaces
- Cross-contamination prevention through layout (raw/cooked separation)
- Allergen cross-contact zones and dedicated prep areas
- Handwashing station placement and accessibility
- Temperature control: equipment placement to minimize danger zone exposure
- Cleaning and sanitation: design features that reduce harborage points

### 6. Common Problems in Existing K-12 Kitchens
Document the most frequent design failures so the app knows what to flag.
- Aging infrastructure (many kitchens 30–50+ years old, designed for heat-and-serve)
- Insufficient space for scratch cooking (USDA pushing this direction)
- Bottlenecked serving lines during short lunch periods
- Inadequate cold storage for fresh produce programs
- Poor ADA compliance in both kitchen and serving areas
- Budget constraints: $5B national equipment gap, only 42% of districts have capital equipment budgets
- Case studies: Saratoga Springs (+15% participation), Central Islip (55%→90%), Boulder Valley (17K scratch meals/day)

### 7. Computer Vision & Spatial Analysis Technology
*[Deferred — will research when kitchen domain knowledge is solid]*
- Room scanning and AR measurement tools
- Object detection and semantic segmentation for kitchen equipment
- Depth estimation from photos/video
- Existing products in space analysis
- Relevant APIs/frameworks (ARKit, ARCore, OpenCV)
- Technical feasibility assessment

---

## My Additional Suggestions — Topics You May Not Have Considered

### 8. Acoustics & Noise
School cafeterias and kitchens are notoriously loud. Noise affects worker fatigue, communication errors (which affect food safety), and student dining experience. Research should cover:
- Noise level standards for commercial kitchens
- Equipment noise ratings and placement strategies
- Acoustic treatment options for kitchen/cafeteria spaces
- Impact of noise on worker stress and error rates

### 9. Lighting Design
Lighting directly affects food safety (seeing contamination), worker safety (knife work, hot surfaces), and energy costs. Specific to K-12:
- Foot-candle requirements by zone (prep, cooking, storage, serving)
- Color temperature and CRI for food presentation at serving lines
- Energy-efficient lighting for schools with tight budgets
- Natural light integration where possible

### 10. Ventilation & Thermal Comfort
Kitchen workers face extreme heat — a compounding factor for fatigue and injury. This goes beyond code compliance:
- Makeup air system design for school kitchens
- Heat load calculations from cooking equipment
- Worker thermal comfort research
- Energy efficiency of kitchen HVAC (a major operating cost for schools)

### 11. Flooring & Slip Resistance
Slips/falls are a leading cause of injury in commercial kitchens:
- Slip-resistance ratings (DCOF) and standards
- Flooring material comparison (quarry tile, epoxy, vinyl, concrete)
- Drainage design and floor slope
- Anti-fatigue mat placement strategy
- ADA floor surface requirements

### 12. Serving Area & Student-Facing Design
The interface between kitchen and students has its own design discipline:
- Serving line configurations (scatter, scramble, food court, traditional)
- Student throughput modeling (meals per minute per serving point)
- Point-of-sale placement and flow
- Self-serve vs. staff-served stations
- Grab-and-go and kiosk satellite options
- How design affects meal participation rates (case studies show 15–35% increases)

### 13. Sustainability & Energy Efficiency
Increasingly a priority for school districts:
- ENERGY STAR equipment selection and placement
- Water conservation in kitchen design (low-flow pre-rinse sprayers, efficient dishwashers)
- Waste management zones (compost, recycling, landfill)
- LEED and green building standards for school kitchens

### 14. Cleaning & Sanitation Ergonomics
Often overlooked but a major source of worker injury and time cost:
- Warewashing area design (soiled → wash → clean flow)
- Three-compartment sink vs. commercial dishwasher placement
- Floor drain placement for easy cleaning
- Wall-mounted vs. floor-standing equipment (sanitation access)
- Chemical dispensing system placement

### 15. Future-Proofing & Flexibility
School kitchens should last 20–30 years but menu programs evolve:
- Modular equipment and flexible utility connections
- Designing for program changes (heat-and-serve → scratch cooking)
- Technology infrastructure (POS systems, inventory management, IoT sensors)
- Capacity planning for enrollment changes

---

## Proposed Research Sequence

| Phase | Sub-Topics | Rationale |
|-------|-----------|-----------|
| **Phase 1: Domain Foundation** | 1 (Regulatory), 2 (Ergonomics), 3 (Layout) | Must understand rules and principles first |
| **Phase 2: Specific Systems** | 4 (Storage), 5 (Food Safety), 6 (Common Problems) | Build on foundation with specific knowledge |
| **Phase 3: Extended Design** | 8–14 (Acoustics, Lighting, Ventilation, Flooring, Serving, Sustainability, Cleaning) | Deeper expertise layers |
| **Phase 4: Technology** | 7 (Computer Vision), 15 (Future-Proofing) | Apply domain knowledge to tech feasibility |

---

## Key Sources Identified So Far

**Federal/Regulatory:**
- [USDA FNS — School Meals](https://www.fns.usda.gov/schoolmeals/nutrition-standards)
- [FDA Food Code](https://www.fda.gov/food/retail-food-protection/fda-food-code)
- [ADA Standards Section 804](https://www.ada-compliance.com/ada-compliance/804-kitchens-and-kitchenettes)
- [NFPA 96](https://www.nfpa.org/codes-and-standards/nfpa-96-standard-development/96)
- [ASHRAE 62.1](https://www.ashrae.org/technical-resources/bookstore/standards-62-1-62-2)

**Industry Organizations:**
- [School Nutrition Association](https://schoolnutrition.org/)
- [Institute of Child Nutrition](https://theicn.org/)
- [FCSI — Foodservice Consultants Society International](https://www.fcsi.org/)
- [NAFEM — Food Equipment Manufacturers](https://www.nafem.org/)

**Academic/Research:**
- [Kitchen ergonomics scoping review (2024) — ScienceDirect](https://www.sciencedirect.com/science/article/pii/S277250142400006X)
- [MSD prevalence in kitchen workers (90.6%) — PMC](https://pmc.ncbi.nlm.nih.gov/articles/PMC9939559/)
- [MSD prevalence (82.7%) — Frontiers in Public Health](https://www.frontiersin.org/journals/public-health/articles/10.3389/fpubh.2024.1358867/full)
- [UC Berkeley Dining Design Guidelines (PDF)](https://uhs.berkeley.edu/sites/default/files/diningdesignguidelines.pdf)

**Industry/Trade:**
- [FE&S Magazine — K-12 Coverage](https://fesmag.com/topics/trends/21220-the-continued-quest-to-elevate-k-12-school-foodservice)
- [Ingenious Culinary Concepts — K-12 Guide](https://www.ingeniouscc.com/the-complete-guide-to-k-12-kitchen-design/)
- [The Lunch Box (Chef Ann Foundation)](https://www.thelunchbox.org/)
- [Pew Trusts — School Kitchen Equipment Report](https://www.pewtrusts.org/en/research-and-analysis/articles/2013/12/18/serving-healthy-school-meals-kitchen-equipment-collection)

**Government Reports:**
- [GAO — USDA Foods in Schools Challenges](https://www.gao.gov/products/gao-23-105697)
- [School Food Modernization Act — H.R. 5731](https://www.congress.gov/bill/119th-congress/house-bill/5731/text)

**Key Statistics:**
- 88% of districts lack needed equipment (Pew/RWJF)
- 55% need infrastructure changes at 1+ schools
- $5B national kitchen equipment gap
- 67–91% of kitchen workers report musculoskeletal disorders
- Renovations increase meal participation 15–35%
