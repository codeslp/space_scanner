# Regulatory & Code Landscape for K-12 School Kitchens

*Comprehensive reference for the Space Scanner app -- every code, standard, and threshold the app must check against*

---

## Purpose

This document maps every regulatory layer that governs the design, construction, and operation of K-12 school kitchens in the United States. For each requirement, it identifies what the Space Scanner app can **visually assess**, what requires **document review**, and what demands **physical testing** -- referencing the detection palette established in [01_CV_CAPABILITIES.md](01_CV_CAPABILITIES.md).

---

## 1. Federal Regulatory Framework

### 1.1 USDA Food and Nutrition Service -- NSLP & SBP

Schools participating in the National School Lunch Program (NSLP) or School Breakfast Program (SBP) must comply with requirements under **7 CFR Part 210** (NSLP) and **7 CFR Part 220** (SBP) that directly affect kitchen design and operations.

#### Key Provisions

| Regulation | Requirement | Design Impact |
|------------|-------------|---------------|
| **7 CFR 210.13(b)** | Minimum **two food safety inspections per school year** by state or local government agency | Kitchen must be designed for inspectability -- clear sightlines, accessible equipment |
| **7 CFR 210.13(c)** | Written food safety program based on **HACCP principles** covering all facilities where food is stored, prepared, or served | Distinct zones for receiving, storage, preparation, cooking, holding, and serving |
| **7 CFR 210.13(c)(1)** | HACCP-based monitoring of **time and temperature** at all critical control points (refrigeration, cooking, cooling, reheating, holding) | Thermometer placement, adequate refrigeration/freezer capacity, blast chiller access |
| **7 CFR 210.13(a)** | Most recent food safety inspection report must be **posted in a publicly visible location** | Designated posting area near entrance |
| **7 CFR 210.14** | Meal pattern requirements (fruits, vegetables, grains, meat/meat alternates, milk) | Adequate prep space, storage variety, serving line configuration |

#### HACCP Process Approach Categories

The USDA identifies three food process categories that drive kitchen layout:

| Process Category | Examples | Critical Control Points | Kitchen Design Implication |
|-----------------|----------|------------------------|---------------------------|
| **No Cook** | Salads, fruit, deli sandwiches | Cold holding at 41 deg F or below | Adequate refrigerated prep/holding space |
| **Same Day Service** | Grilled items, baked goods | Cooking to required internal temps | Cooking equipment capacity, holding equipment |
| **Complex Food Preparation** | Soups, casseroles made ahead | Cooking, cooling, reheating, holding | Blast chillers, adequate cooling space, reheating equipment, separate staging areas |

#### Implications for the App

- **Visually assessable**: Posted inspection report (OCR -- HIGH feasibility), HACCP flow zones (spatial analysis -- MEDIUM feasibility), thermometer presence on equipment (object detection -- MEDIUM feasibility)
- **Document review**: Written HACCP plan, inspection history, staff training records
- **Physical testing**: Actual food temperatures, equipment calibration verification
- **Key threshold**: Two inspections per school year (app can read posted inspection dates via OCR)

### 1.2 FDA Food Code

The FDA Food Code is a **model code** -- not federal law itself -- published by the U.S. Public Health Service/FDA. States and local jurisdictions adopt it (with modifications) as the basis for their own food safety regulations.

#### Current Edition and Update Cycle

| Detail | Value |
|--------|-------|
| **Current edition** | FDA Food Code 2022 |
| **Most recent supplement** | Supplement to the 2022 Food Code (2024) |
| **Update cycle** | Approximately every 4 years (2009, 2013, 2017, 2022) |
| **Legal status** | Model code; not binding until adopted by state/local jurisdiction |
| **Adoption status** | 49 states + DC have adopted some version; **California is the only state** that has not adopted any version |

#### Chapter 4: Equipment, Utensils, and Linens -- Key Design Requirements

| Section | Requirement | Specific Threshold |
|---------|-------------|-------------------|
| **4-101.11** | Food-contact surfaces: safe, durable, corrosion-resistant, nonabsorbent, smooth, easily cleanable | Materials standard |
| **4-204.112** | Equipment thermometers in refrigeration and hot-holding units | Accurate to +/-1 deg C (+/-2 deg F) |
| **4-301.12** | **Three-compartment sink** required for manual warewashing | Minimum compartment: 12" x 12" x 10"; drainboards minimum 12" x 12" |
| **4-301.11** | Handwashing sinks: at least one in food preparation, food dispensing, and warewashing areas | Accessible, not blocked by equipment |
| **4-402.11** | Floor-mounted equipment on legs: **minimum 6 inches** clearance above floor | 6" (150 mm) clearance |
| **4-402.12** | Counter-mounted equipment on legs: **minimum 4 inches** clearance above counter | 4" (100 mm) clearance |
| **4-402.11** | Equipment not easily movable: sufficient clearance between/behind for cleaning | Accessible on all sides |
| **4-501.114** | Manual hot water sanitizing: water at **171 deg F (77 deg C) minimum** | 171 deg F / 77 deg C |

#### Chapter 5: Water, Plumbing, and Waste -- Key Requirements

| Section | Requirement | Specific Threshold |
|---------|-------------|-------------------|
| **5-101.11** | Water from an approved source, meeting EPA drinking water standards | Potable water supply |
| **5-202.12** | Handwashing water temperature: **minimum 85 deg F (29.4 deg C)** (changed from 100 deg F in 2022 edition) | 85 deg F / 29.4 deg C |
| **5-202.11** | Hot water sufficient for peak demands | Sizing requirement |
| **5-203.11** | At least **one handwashing sink** in each food preparation, food dispensing, and warewashing area | Per-area minimum |
| **5-205.11** | Handwashing sinks: cannot be used for other purposes | Dedicated use |
| **5-304.14** | Grease traps/interceptors required where grease may enter drainage system | Per local plumbing code |
| **5-402.11** | Sewage conveyed to approved disposal system | Connection verification |

#### Chapter 6: Physical Facilities -- Key Requirements

| Section | Requirement | Specific Threshold |
|---------|-------------|-------------------|
| **6-101.11** | Floor, wall, ceiling surfaces: **smooth, durable, easily cleanable** | Materials standard |
| **6-101.11** | Areas subject to moisture (food prep, walk-ins, warewashing, toilets): **nonabsorbent** | Nonabsorbent surfaces |
| **6-201.11** | Floors, walls, ceilings: designed, constructed, installed to be smooth and easily cleanable | Design standard |
| **6-201.18** | Floor-wall juncture: **coved** with minimum 3/8" radius, extending 4" up wall | 3/8" radius, 4" height |
| **6-303.11(A)** | Lighting in food prep areas and at surfaces where employees work with food/utensils: **50 foot-candles (540 lux)** minimum | **50 fc / 540 lux** |
| **6-303.11(B)** | Lighting in handwashing, warewashing, equipment/utensil storage, toilet rooms, self-service areas: **20 foot-candles (220 lux)** minimum | **20 fc / 220 lux** |
| **6-303.11(C)** | Lighting in walk-in refrigerators, dry storage, during cleaning: **10 foot-candles (110 lux)** minimum | **10 fc / 110 lux** |
| **6-304.11** | Ventilation: sufficient to keep rooms free of excessive heat, steam, condensation, vapors, obnoxious odors, smoke, and fumes | Performance standard |
| **6-501.12** | Floors, walls, ceilings: cleaned as often as necessary to keep clean | Maintenance standard |
| **6-501.111** | Premises maintained free of insects, rodents, and other pests | No evidence of pests |

#### Lighting Requirements Summary (Critical for App)

| Area | Minimum Light Level | Foot-Candles | Lux |
|------|---------------------|-------------|-----|
| Food preparation surfaces, work with food/utensils | **HIGH** | 50 fc | 540 lux |
| Handwashing, warewashing, equipment storage, self-service, toilets | **MEDIUM** | 20 fc | 220 lux |
| Walk-in refrigerators, dry storage, during cleaning | **LOW** | 10 fc | 110 lux |

#### Warewashing Temperature Requirements

| Method | Temperature Requirement |
|--------|------------------------|
| Manual hot water sanitizing (3-compartment sink) | **171 deg F (77 deg C)** minimum |
| Mechanical warewashing -- final rinse (high temp) | **180 deg F (82 deg C)** minimum at the manifold |
| Mechanical warewashing -- incoming water to booster | **140 deg F (60 deg C)** minimum |
| Handwashing sink hot water | **85 deg F (29.4 deg C)** minimum (2022 change) |
| Wash sink (first compartment) | **100 deg F (38 deg C)** minimum |
| Rinse sink (second compartment) | **110 deg F (43 deg C)** minimum |

#### Implications for the App

- **Visually assessable**: Surface conditions (cracks, damage -- HIGH feasibility), lighting adequacy (qualitative only -- MEDIUM feasibility), equipment spacing/clearances via LiDAR (HIGH feasibility), handwashing sink presence and accessibility (HIGH feasibility), coved base presence (MEDIUM feasibility), posted permits/certificates (OCR -- HIGH feasibility)
- **Document review**: Permits, water test results, equipment maintenance records
- **Physical testing**: Lighting (lux meter), water temperatures, sanitizer concentrations
- **Key measurements for the app**:
  - Equipment-to-floor clearance: 6" minimum (LiDAR -- achievable at 1-5 cm accuracy)
  - Counter-mounted equipment clearance: 4" minimum
  - Coved base: 3/8" radius (below LiDAR precision -- flag for manual check)
  - Lighting: Qualitative assessment only; recommend lux meter for compliance verification

### 1.3 USDA Foods (Commodities) Storage Requirements

Schools receiving USDA Foods (commodity products) must maintain proper storage conditions that directly affect kitchen design and capacity.

#### Temperature Requirements

| Storage Type | Temperature Requirement | Notes |
|-------------|------------------------|-------|
| **Frozen storage** | **0 deg F (-18 deg C) or below** | Thermometer placed between frozen packages |
| **Refrigerated storage** | **41 deg F (5 deg C) or below** | Backup thermometer for power outage verification |
| **Dry storage (optimal)** | **50 deg F (10 deg C)** | Maximum shelf life |
| **Dry storage (adequate)** | **70 deg F (21 deg C)** | Acceptable for most products |
| **Dry storage (maximum)** | Below **85 deg F (29 deg C)** | Above this, rapid quality loss |

#### Physical Storage Requirements

| Requirement | Specification |
|-------------|---------------|
| **Shelving clearance from floor** | Minimum **6 inches** |
| **Distance from walls** | Sufficient for air circulation |
| **Shelving type** | Open, slotted shelving for air circulation |
| **Daily monitoring** | Date, time, temperature, person responsible recorded |
| **FIFO rotation** | First In, First Out required |
| **Pest prevention** | Sealed containers, clean environment |

#### Implications for the App

- **Visually assessable**: Shelving height from floor (LiDAR -- HIGH feasibility), shelving type (open vs. closed -- object detection -- MEDIUM feasibility), thermometer presence (object detection -- MEDIUM feasibility), storage organization/FIFO labeling (OCR -- MEDIUM feasibility)
- **Document review**: Temperature logs, commodity receipt records, inventory records
- **Physical testing**: Actual storage temperatures (thermometer readings)
- **Key measurement**: 6" minimum shelving clearance from floor (LiDAR -- achievable)

---

## 2. Building & Fire Codes

### 2.1 International Building Code (IBC)

The IBC (current edition: 2021, with 2024 published) governs the structural and occupancy requirements for school buildings, including kitchens.

#### Occupancy Classifications for School Kitchens

| Space | IBC Classification | Notes |
|-------|-------------------|-------|
| **Classrooms, educational spaces** | **Group E** (Educational) | 6+ persons, 4+ hours/day or 12+ hours/week, through 12th grade |
| **Kitchen/food prep** | **Group E** (accessory) or **Group B** (Business) | Typically classified as accessory to E if <10% of building area |
| **Cafeteria/dining (< 50 occupants)** | **Group E** (accessory) | Part of educational occupancy |
| **Cafeteria/dining (50+ occupants)** | **Group A-2** (Assembly) | Food/drink consumption; may trigger mixed-occupancy requirements |
| **Commercial kitchen (> 2,500 sf, standalone)** | **Group F-1** (Factory) | Rare in school context |

#### Occupant Load Factors (IBC Table 1004.5)

| Function | Occupant Load Factor (sf/person) | Basis |
|----------|--------------------------------|-------|
| Educational classroom | 20 sf/person net | Net area |
| Assembly with tables/chairs (cafeteria) | 15 sf/person net | Net area |
| Kitchen/cooking | 200 sf/person gross | Gross area |
| Storage (dry, refrigerated) | 300 sf/person gross | Gross area |

#### Egress Requirements (Chapter 10)

| Requirement | Specification |
|-------------|---------------|
| **Minimum corridor width** (educational) | **72 inches (6 feet)** |
| **Minimum aisle width** (educational) | **30 inches** |
| **Door width** (minimum) | **32 inches clear** (most doors require 36" nominal) |
| **Two exits required** | When occupant load exceeds Table 1006.2.1 thresholds |
| **Maximum dead-end corridor** | 20 feet (unsprinklered) / 50 feet (sprinklered) |
| **Exit signage** | Illuminated exit signs at exits and along exit access path |
| **Emergency lighting** | Required in corridors, exit stairs, and at exits; minimum 1 fc (initial), 0.6 fc (90 min) |

#### Fire-Resistance Ratings

| Element | Rating | Notes |
|---------|--------|-------|
| **Corridors** (educational, sprinklered) | 0-hour or 1-hour | Depending on conditions |
| **Corridors** (educational, unsprinklered) | 1-hour | Required |
| **Separated occupancies** (E/A-2 boundary) | Per IBC Table 508.4 | Typically 1-hour (sprinklered) or 2-hour (unsprinklered) |
| **Kitchen exhaust ducts** | Per NFPA 96 | Enclosed in rated shaft or protected by listed system |

#### Implications for the App

- **Visually assessable**: Exit sign presence and illumination (object detection -- HIGH feasibility), corridor/aisle widths (LiDAR -- HIGH feasibility), door widths (LiDAR -- HIGH feasibility), fire-rated wall/door assemblies (label reading via OCR -- MEDIUM feasibility), dead-end corridor lengths (spatial mapping -- HIGH feasibility)
- **Document review**: Certificate of occupancy, construction type documentation, sprinkler system certification
- **Physical testing**: Emergency lighting duration, fire-resistance ratings (destructive testing -- not app scope)
- **Key measurements**: Corridor width >= 72", aisle width >= 30", door clear width >= 32"

### 2.2 International Mechanical Code (IMC)

The IMC (2021 edition; 2024 published) governs kitchen ventilation systems.

#### Commercial Kitchen Exhaust Requirements (IMC Chapter 5)

| Requirement | Specification |
|-------------|---------------|
| **Type I hoods required** | Over equipment producing grease-laden vapors (fryers, grills, broilers, ovens) |
| **Type II hoods required** | Over equipment producing heat, steam, moisture (dishwashers, steamers) |
| **Makeup air required** | When exhaust exceeds **400 CFM** (IMC 505.4) |
| **Makeup air volume** | Approximately equal to exhaust volume |
| **Negative pressure prevention** | System must be balanced to prevent doors from being hard to open, pilot lights from extinguishing |

#### Exhaust Flow Rates by Hood Type and Equipment Duty (IMC Section 507.5)

| Equipment Duty | Wall Canopy Hood (CFM/linear ft) | Island Canopy Hood (CFM/linear ft) | Backshelf/Proximity Hood (CFM/linear ft) |
|---------------|--------------------------------|-----------------------------------|----------------------------------------|
| **Light duty** | 200 | 250 | 150 |
| **Medium duty** | 300 | 300 | 200 |
| **Heavy duty** | 400 | 400 | 250 |
| **Extra-heavy duty** | 550 | 550 | Not permitted |

*Note: The highest duty-rated appliance under a hood determines the exhaust rate for the entire hood.*

#### Equipment Duty Classifications

| Duty Level | Equipment Examples |
|-----------|-------------------|
| **Light** | Ovens (not convection), steamers |
| **Medium** | Convection ovens, kettles, pasta cookers, tilting skillets |
| **Heavy** | Fryers (open-pot), griddles, ranges, salamanders |
| **Extra-heavy** | Char-broilers, wok ranges, solid-fuel cooking |

#### Implications for the App

- **Visually assessable**: Hood presence over cooking equipment (object detection -- HIGH feasibility), hood type identification (MEDIUM feasibility), equipment type under hood (MEDIUM feasibility), hood size relative to equipment (LiDAR -- HIGH feasibility), makeup air unit presence (MEDIUM feasibility)
- **Document review**: Mechanical permits, hood testing reports, air balance reports
- **Physical testing**: Actual CFM measurements, air velocity at hood face, makeup air balance, temperature
- **Key checks**: Every grease-producing appliance must be under a Type I hood; every heat/steam appliance under at least a Type II hood; hood must extend 6" beyond equipment on open sides

### 2.3 International Plumbing Code (IPC)

The IPC (2021 edition) governs plumbing fixtures, grease management, and backflow prevention.

#### Key Kitchen Plumbing Requirements

| Requirement | Specification |
|-------------|---------------|
| **Grease interceptors** | Required for all establishments where grease may enter drainage (schools, restaurants, cafeterias) |
| **Interceptor retention time** | 30 minutes for gravity interceptors (IPC); 7-10 minutes for hydromechanical |
| **Interceptor proximity** | Hydromechanical: vertical distance from fixture outlet to interceptor inlet <= 30 inches; developed length <= 60 inches |
| **Emergency floor drain** | Required downstream of grease interceptor connection |
| **Backflow prevention** | Required per Section 608; device type depends on hazard level |
| **Commercial dishwasher supply** | Protected by air gap, atmospheric vacuum breaker, or pressure vacuum breaker |
| **Three-compartment sink trap** | Grease interceptor may serve as trap for up to 3-compartment sink |

#### Backflow Prevention Device Hierarchy

| Hazard Level | Device Type | Standard |
|-------------|------------|---------|
| **High hazard** (health risk) | Reduced Pressure Zone (RPZ) Assembly | ASSE 1013 |
| **Low hazard** (non-health) | Double Check Valve Assembly (DCVA) | ASSE 1015 |
| **Commercial dishwashers** | Air gap, AVB, or PVB | Per IPC 608 |
| **Hose connections** | Hose-connection backflow preventer | ASSE 1052 |

#### Grease Interceptor Sizing

| Factor | Calculation |
|--------|------------|
| **Flow rate** | Sum of all connected fixture GPM: 100% of largest + 50% of second + 25% of each additional |
| **Total capacity** | Not to exceed 2.5x the certified GPM flow rate |
| **Retention time** | Flow rate x retention minutes = required gallons |

#### Implications for the App

- **Visually assessable**: Three-compartment sink presence (object detection -- HIGH feasibility), floor drain presence (MEDIUM feasibility), handwashing sink locations (HIGH feasibility), grease interceptor/trap presence (MEDIUM feasibility, if visible), backflow prevention devices (LOW feasibility -- usually concealed)
- **Document review**: Plumbing permits, grease trap maintenance records, backflow preventer test certificates
- **Physical testing**: Water pressure, flow rates, grease trap capacity verification
- **Key checks**: At least one handwashing sink per food prep, dispensing, and warewashing area; three-compartment sink present and properly sized

### 2.4 NFPA 96: Ventilation Control and Fire Protection of Commercial Cooking Operations

NFPA 96 (current edition: 2021; next edition anticipated 2024) is the primary standard governing commercial kitchen hood systems, exhaust ductwork, and fire suppression.

#### Hood Requirements

| Requirement | Type I Hood | Type II Hood |
|-------------|------------|-------------|
| **Purpose** | Grease-producing equipment | Heat/moisture-producing equipment |
| **Fire suppression required** | **Yes** -- UL 300 system | No |
| **Grease filters required** | **Yes** -- baffle-type | No |
| **Overhang beyond equipment** | **6 inches minimum** on all open sides | Per manufacturer |
| **Maximum height above cooking surface** | **4 feet** (wall canopy) | Per manufacturer |
| **Construction material** | Steel min 0.043" (18 ga) or stainless min 0.037" | Similar |

#### Exhaust Duct Requirements

| Requirement | Specification |
|-------------|---------------|
| **Material** | Carbon steel >= 0.060" (16 ga) or stainless steel >= 0.048" (18 ga) |
| **Joints/seams** | Continuous external liquid-tight weld |
| **Clearance from combustibles** | **18 inches minimum** (0" if noncombustible with proper insulation) |
| **Slope -- horizontal runs <= 75 ft** | **2% minimum** (~1/4" per foot) |
| **Slope -- horizontal runs > 75 ft** | **8% minimum** (~1" per foot) |
| **Cleanout access** | At every change of direction and at 12-foot maximum intervals |

#### Fire Suppression System Requirements

| Requirement | Specification |
|-------------|---------------|
| **Standard** | **UL 300** listed system |
| **Coverage** | Cooking equipment, hood interior, and duct collar |
| **Activation** | Automatic via fusible links **AND** manual pull station |
| **Shutoffs** | Automatic gas and electrical shutoff upon activation |
| **Inspection frequency** | Semiannual by certified technician |
| **K-class fire extinguisher** | Required within 30 feet travel distance of cooking equipment |

#### Hood Cleaning Frequency Schedule

| Cooking Volume | Cleaning Interval | Examples |
|---------------|-------------------|---------|
| **High volume** | Every **3 months** | 24-hour kitchens, charbroiling, wok cooking |
| **Moderate volume** | Every **6 months** | Most school kitchens fall here |
| **Low volume** | Every **12 months** | Churches, seasonal kitchens |

*Cleaning must reach bare metal per IKECA or NFPA 96 guidelines. Cleaning certificate must be posted.*

#### Implications for the App

- **Visually assessable**: Hood presence over cooking equipment (HIGH feasibility), hood type (Type I vs Type II -- MEDIUM feasibility), fire suppression system presence/nozzles (MEDIUM feasibility), K-class extinguisher presence (HIGH feasibility), manual pull station presence (HIGH feasibility), posted cleaning certificate (OCR -- HIGH feasibility), visible grease buildup on hood/filters (MEDIUM feasibility), overhang measurement (LiDAR -- HIGH feasibility)
- **Document review**: Hood cleaning certificates, fire suppression inspection reports, UL 300 system certification
- **Physical testing**: Duct integrity, fusible link condition, suppression system charge
- **Key measurements**: Hood overhang >= 6" beyond equipment; duct clearance >= 18" from combustibles; hood height <= 48" above cooking surface; extinguisher within 30 ft travel distance

### 2.5 NFPA 101: Life Safety Code

NFPA 101 (2021 edition) provides life safety requirements specific to educational occupancies (Chapter 14 for new, Chapter 15 for existing).

#### Educational Occupancy Requirements Relevant to Kitchens

| Requirement | Specification |
|-------------|---------------|
| **Occupancy definition** | Building used for educational purposes through 12th grade, 6+ persons, 4+ hours/day or 12+ hours/week |
| **Occupant load factor** | **20 sf per person** (net) for classrooms |
| **Corridor width** | **72 inches (6 feet) minimum** |
| **Aisle width** | **30 inches minimum** |
| **Sprinkler requirement** | Required in all new educational occupancies (NFPA 101 14.3.5) |
| **Fire alarm system** | Required; manual fire alarm boxes at exits and at natural routes of travel |
| **Cooking equipment** | Must comply with NFPA 96 when grease-laden vapors are produced |
| **Younger students** | Preschool, kindergarten, 1st grade must be located on level of exit discharge |

#### Means of Egress for Kitchen Areas

| Element | Requirement |
|---------|-------------|
| **Exit access travel distance** | 150 ft (unsprinklered) / 200 ft (sprinklered) |
| **Common path of egress** | 75 ft maximum |
| **Dead-end corridors** | 20 ft (unsprinklered) / 50 ft (sprinklered) |
| **Exit signage** | Illuminated, visible from exit access corridor |
| **Emergency lighting** | Minimum 1.5 hours; 1 fc initial, 0.6 fc at 90 minutes |

#### Implications for the App

- **Visually assessable**: Exit signs (HIGH feasibility), corridor widths (LiDAR -- HIGH feasibility), fire alarm pull stations (HIGH feasibility), sprinkler heads (MEDIUM feasibility), travel distance estimation (spatial mapping -- HIGH feasibility)
- **Document review**: Fire alarm inspection reports, sprinkler system inspection certificates, occupancy certificates
- **Physical testing**: Emergency lighting duration, fire alarm audibility
- **Key measurements**: Corridor >= 72", travel distance <= 200 ft (sprinklered), dead-end <= 50 ft (sprinklered)

---

## 3. Accessibility Standards

### 3.1 ADA Standards for Accessible Design -- Section 804: Kitchens and Kitchenettes

The 2010 ADA Standards for Accessible Design (effective March 15, 2012) establish minimum accessibility requirements for kitchens. While Section 804 is primarily written for residential dwelling units, its principles apply to school kitchens -- particularly staff work areas and student-facing serving areas.

#### Kitchen Work Surface Requirements (804.3)

| Requirement | Specification |
|-------------|---------------|
| **Maximum height** | **34 inches (865 mm)** above finish floor |
| **Adjustable alternative** | 29-36 inches (735-915 mm) permitted |
| **Minimum width** | **30 inches (760 mm)** |
| **Clear floor space** | Forward approach, centered on work surface |
| **Knee/toe clearance** | Per Section 306: 27" minimum knee height, 25" minimum knee depth |
| **No sharp/abrasive surfaces** | Under work surface counters |

#### Removable Cabinetry Under Work Surface

If cabinetry is installed under an accessible work surface, all three conditions must be met:
1. Cabinetry can be removed without removing/replacing the work surface
2. Finish floor extends under the cabinetry
3. Walls behind and surrounding the cabinetry are finished

### 3.2 ADA Section 308: Reach Ranges

These reach ranges apply to all accessible elements in the kitchen, including controls, switches, dispensers, and storage.

#### Forward Reach (308.2)

| Condition | Maximum High Reach | Minimum Low Reach | Maximum Reach Depth |
|-----------|-------------------|-------------------|---------------------|
| **Unobstructed** | **48 inches** (1220 mm) | **15 inches** (380 mm) | N/A |
| **Over obstruction, depth <= 20"** | **48 inches** (1220 mm) | 15 inches | 20 inches (510 mm) |
| **Over obstruction, depth 20-25"** | **44 inches** (1120 mm) | 15 inches | 25 inches (635 mm) max |

#### Side Reach (308.3)

| Condition | Maximum High Reach | Minimum Low Reach | Notes |
|-----------|-------------------|-------------------|-------|
| **Unobstructed** | **48 inches** (1220 mm) | **15 inches** (380 mm) | |
| **Over obstruction, depth <= 10"** | **48 inches** (1220 mm) | 15 inches | Obstruction max 34" high |
| **Over obstruction, depth 10-24"** | **46 inches** (1170 mm) | 15 inches | Obstruction max 34" high |

### 3.3 Serving Area ADA Requirements

School cafeteria serving lines must comply with ADA requirements for student accessibility.

| Element | Requirement | Specific Dimension |
|---------|-------------|-------------------|
| **Service counter height** | Maximum | **36 inches (915 mm)** |
| **Tray slide height** | Range | **28-34 inches (710-865 mm)** |
| **Food service line width** | Minimum clear | **36 inches (915 mm)** minimum; **42 inches (1065 mm)** preferred |
| **Self-service items** | Within reach range | **15-48 inches (380-1220 mm)** |
| **Checkout/cashier counter** | Accessible portion minimum width | **36 inches (915 mm)**, maximum height **36 inches** |
| **Floor surface** | Stable, firm, slip-resistant | Per ADA 302 |
| **Wheelchair turning space** | Clear | **60-inch (1525 mm) diameter** |
| **Queue spacing** | Clear width | **36 inches minimum** |

#### Sales and Service Counters (ADA Section 904)

| Requirement | Specification |
|-------------|---------------|
| **Accessible counter height** | **36 inches (915 mm) maximum** |
| **Accessible counter length** | **36 inches (915 mm) minimum** |
| **Parallel approach clear floor space** | 30" x 48" minimum |
| **Forward approach clear floor space** | 30" x 48" minimum with knee/toe clearance |

### 3.4 ANSI/ICC A117.1: Accessible and Usable Buildings and Facilities

ANSI A117.1 (2017 edition; 2020 working draft) provides the technical criteria referenced by the IBC for accessibility compliance. It is the standard the local Authority Having Jurisdiction (AHJ) typically enforces in lieu of direct ADA enforcement.

#### Kitchen-Specific Provisions

| Requirement | Specification | Section |
|-------------|---------------|---------|
| **Counter height** (Type A unit) | Adjustable or replaceable, 29-36 inches | 1003.12.3.2 |
| **Centerline clearance at range** | Minimum **26 inches** from centerline to adjacent counter/appliance | 1003.12.4.2 (changed from 24" in prior editions) |
| **Clear floor space at appliances** | 30" x 48" minimum | 1003.12 |
| **Reach over obstruction** | Max reach height 44" if obstruction depth > 20" | 308.2 |
| **Wall cabinet bottom shelf** | Maximum **48 inches** from floor (44" if over counter) | Referenced |
| **U-shaped kitchen clearance** | 60 inches between opposing counters | 1003.12.2 |
| **Galley kitchen clearance** | 40 inches between opposing counters (accessible on one side only) | 1003.12.2 |

#### Relationship Between ADA and A117.1

| Aspect | ADA Standards | ANSI A117.1 |
|--------|--------------|------------|
| **Enforced by** | U.S. DOJ (federal) | Local building department (state/local) |
| **Legal basis** | Americans with Disabilities Act | Referenced by IBC |
| **Scope** | Public accommodations, state/local government | All building construction under IBC |
| **Technical alignment** | Largely harmonized since 2010 | Slightly more detailed/current |

#### Implications for the App

- **Visually assessable**: Counter heights (LiDAR -- HIGH feasibility, accuracy 1-5 cm vs 34" threshold), service counter heights (HIGH feasibility), serving line widths (HIGH feasibility), clear floor space (spatial analysis -- HIGH feasibility), tray slide height range (HIGH feasibility), wheelchair turning radius (spatial mapping -- HIGH feasibility), self-service item reach range (MEDIUM feasibility)
- **Document review**: ADA compliance certificates, building plans showing accessible routes
- **Physical testing**: Floor slip resistance (coefficient of friction testing), counter adjustability verification
- **Critical measurements for the app**:
  - Work surface height <= 34" (LiDAR: achievable)
  - Serving counter <= 36" (LiDAR: achievable)
  - Tray slide: 28-34" (LiDAR: achievable)
  - Service line width >= 36" (LiDAR: achievable)
  - Turning space >= 60" diameter (spatial mapping: achievable)
  - Forward reach: max 48" unobstructed (LiDAR: achievable)

---

## 4. Equipment Sanitation Standards

### 4.1 NSF/ANSI Standards

NSF International (formerly the National Sanitation Foundation) establishes standards that serve as the benchmark for all commercial foodservice equipment. NSF certification is so prevalent that it is virtually impossible to build a new commercial kitchen without NSF-certified equipment.

#### Key Standards

| Standard | Title | Scope |
|----------|-------|-------|
| **NSF/ANSI 2** | Food Equipment | Materials, design, fabrication, construction, and performance of food handling and processing equipment: tables, counters, hoods, shelves, sinks, and components |
| **NSF/ANSI 3** | Commercial Warewashing Equipment | Spray-type dishwashers, glass washers, utensil washers |
| **NSF/ANSI 4** | Commercial Cooking, Rethermalization, and Powered Hot Food Holding and Transport Equipment | Ranges, ovens, fryers, griddles, broilers, steam cookers, kettles, toasters, rotisseries, hot holding cabinets, rethermalization equipment |
| **NSF/ANSI 5** | Water Heaters, Hot Water Supply Boilers, and Heat Recovery Equipment | Water heating equipment for food establishments |
| **NSF/ANSI 7** | Commercial Refrigerators and Freezers | Reach-in, walk-in, and display-type refrigerators and freezers and components |
| **NSF/ANSI 12** | Automatic Ice Making Equipment | Ice machines and related components |
| **NSF/ANSI 25** | Vending Machines | Food and beverage vending equipment |
| **NSF/ANSI 29** | Detergent and Chemical Feeders and Dispensers | Chemical dispensing equipment |
| **NSF/ANSI 36** | Dinnerware | Commercial dinnerware |
| **NSF/ANSI 51** | Food Equipment Materials | Materials and finishes used in manufacturing foodservice equipment (tubing, sealants, gaskets, valves). 2023 edition includes revised lead content requirements for materials in contact with water intended for consumption. |

#### What NSF Certification Means

| Aspect | Detail |
|--------|--------|
| **Initial certification** | Equipment tested by NSF against applicable standard; must pass sanitation, material safety, and performance requirements |
| **Ongoing compliance** | Periodic unannounced facility inspections; follow-up testing |
| **Public health requirements** | Smooth, easily cleanable surfaces; no crevices that harbor bacteria; rounded corners; food-safe materials |
| **Mark** | NSF mark on equipment indicates third-party verification of compliance |
| **Health department acceptance** | Most health departments require or strongly prefer NSF-certified equipment |

#### Other Certification Bodies

| Certification | Organization | Scope |
|--------------|-------------|-------|
| **UL EPH Mark** | UL Solutions (Underwriters Laboratories) | Sanitary design, construction, and performance of commercial food equipment. 30+ years of experience; recognized nationally. |
| **ETL Sanitation Mark** | Intertek | Equipment tested against national sanitation standards; includes periodic follow-up inspections |
| **IAPMO EGS** | International Association of Plumbing and Mechanical Officials | Food equipment certification to NSF and other standards |

*Note: "ULDERA" (Dietary Equipment Review and Advisory) does not appear to be a current active listing program. UL's EPH (Environmental and Public Health) certification program is the relevant UL offering for food equipment sanitation.*

#### Equipment Materials Requirements (NSF/ANSI 51 Key Provisions)

| Requirement | Specification |
|-------------|---------------|
| **Food-contact surfaces** | Corrosion-resistant, nonabsorbent, nontoxic, smooth, free of breaks/crevices |
| **Lead content** (2023 revision) | Materials in contact with water/coffee/tea for consumption: evaluated for weighted average lead content |
| **Sealants and gaskets** | Must be food-safe, replaceable, not harbor bacteria |
| **Surface finish** | Smooth, easily cleanable; no exposed screw threads or bolt heads on food-contact surfaces |

#### Implications for the App

- **Visually assessable**: NSF/UL/ETL certification marks on equipment (OCR -- HIGH feasibility), equipment model/serial numbers for database lookup (OCR -- HIGH feasibility), visible surface condition (rust, damage, wear -- HIGH feasibility), smooth vs. rough surfaces (MEDIUM feasibility)
- **Document review**: Equipment purchase records showing NSF certification, warranty information, maintenance records
- **Physical testing**: Surface smoothness, material identification (metal vs. non-food-safe materials)
- **Key app feature**: Read equipment labels (model/serial) via OCR, cross-reference against NSF/UL certified product databases to verify certification status

---

## 5. Ventilation Standards

### 5.1 ASHRAE 62.1: Ventilation for Acceptable Indoor Air Quality

ASHRAE Standard 62.1 (2022 edition) establishes minimum ventilation rates for commercial buildings, including school kitchens and dining areas.

#### Minimum Ventilation Rates for Kitchen/Dining Spaces (Table 6-1)

| Space Type | Occupant Density (persons/1000 sf) | People Outdoor Air Rate (CFM/person) | Area Outdoor Air Rate (CFM/sf) |
|-----------|----------------------------------|-------------------------------------|-------------------------------|
| **Cafeteria / fast-food dining** | 100 | 7.5 | 0.18 |
| **Restaurant dining room** | 70 | 7.5 | 0.18 |
| **Kitchen / cooking** | 20 | 7.5 | 0.12 |
| **School classroom** | 35 | 10 | 0.12 |

*Example calculation: A 500 sf school kitchen with 3 workers = (3 x 7.5) + (500 x 0.12) = 22.5 + 60 = 82.5 CFM outdoor air minimum.*

#### Kitchen-Specific Provisions

| Requirement | Specification |
|-------------|---------------|
| **Transfer air** | Kitchen areas may use transfer air from adjacent dining areas to satisfy ventilation requirements |
| **Exhaust air** | Kitchen exhaust (via cooking hoods) counts toward overall building exhaust but must be replaced |
| **Makeup air composition** | May be any combination of outdoor air, recirculated air, or transfer air |
| **Air balance** | Kitchen should be slightly negative relative to dining to prevent cooking odors from migrating |

### 5.2 ASHRAE 154: Ventilation for Commercial Cooking Operations

ASHRAE Standard 154 (2016 edition) specifically addresses the design of commercial cooking ventilation systems.

#### Scope and Relationship to Other Standards

| Aspect | Detail |
|--------|--------|
| **Scope** | Exhaust hoods, exhaust systems, and replacement (makeup) air systems for commercial cooking |
| **References** | ASHRAE 62.1 (indoor air quality), NFPA 96 (fire protection) |
| **Relationship** | ASHRAE 154 provides performance-based design guidance; NFPA 96 provides prescriptive fire safety requirements; IMC provides code-enforceable minimums |

#### Key Design Parameters

| Parameter | Specification |
|-----------|---------------|
| **Hood capture and containment** | Hood must capture and contain all cooking effluent; visual smoke test recommended |
| **Exhaust rate determination** | Based on hood style, cooking equipment type, and desired capture performance |
| **Replacement air** | Must be provided to offset exhaust; includes outdoor air, transfer air, recirculated air |
| **Replacement air delivery** | Should not interfere with hood capture; air velocity at face of hood is critical |
| **Thermal comfort** | Makeup air temperature should be conditioned to avoid uncomfortable drafts |
| **Short-circuiting** | Replacement air outlets should not be positioned to short-circuit exhaust |

#### Makeup Air Requirements and Balance

| Configuration | Recommendation |
|--------------|----------------|
| **Replacement air volume** | 80-90% of exhaust volume (remaining 10-20% provided by transfer air from adjacent spaces) |
| **Maximum displacement** | Makeup air velocity at hood face should not exceed 75 FPM |
| **Delivery location** | Rear of hood (backwall supply), front face (perforated face), or short-circuit (directly into hood) |
| **Air balance** | Slight negative pressure in kitchen relative to dining areas |

#### Implications for the App

- **Visually assessable**: Makeup air diffuser/register presence (MEDIUM feasibility), hood configuration assessment (MEDIUM feasibility), air supply register locations relative to hoods (spatial analysis -- MEDIUM feasibility)
- **Document review**: HVAC design documents, air balance reports, commissioning records
- **Physical testing**: CFM measurements, air velocity readings, pressure differential testing, smoke tests for hood capture
- **Key limitation**: Ventilation adequacy cannot be confirmed by visual inspection alone. The app should flag the presence/absence of visible makeup air components and recommend professional air balance testing.

---

## 6. State & Local Variations

### 6.1 How States Adopt and Modify the FDA Food Code

States adopt the FDA Food Code through two primary methods:

| Method | Description | Implication |
|--------|-------------|-------------|
| **Adoption by reference** ("short form") | State publishes a statement adopting the FDA Food Code by reference, with specific amendments listed | Faster adoption, easier to update |
| **Section-by-section adoption** ("long form") | State transcribes the entire code into its own administrative code with modifications | Slower to update, more opportunity for divergence |

#### Adoption Status (as of late 2024)

| Status | Count | Examples |
|--------|-------|---------|
| **Adopted 2022 Food Code** | 11 state agencies in 7 states | Early adopters |
| **Adopted 2017 Food Code** | Majority of states | Including Texas |
| **Adopted 2013 or earlier** | Several states | Lagging adoption |
| **No FDA Food Code adopted** | 1 state | **California** (uses its own California Retail Food Code) |

### 6.2 Significant State Variations

#### California

| Aspect | Detail |
|--------|--------|
| **Code name** | California Retail Food Code (CalCode) -- California Health and Safety Code, Division 104, Part 7 |
| **FDA Food Code relationship** | **Not adopted**; CalCode is modeled on FDA principles but is independent state legislation |
| **Enforcement** | 62 local environmental health regulatory agencies |
| **Notable differences** | Menu labeling requirements (Section 114094); some structural requirements exceed FDA Food Code; separate California Building Code with state-specific seismic and energy requirements |
| **Kitchen design impact** | CalCode contains its own structural, equipment, and operational requirements that may differ from FDA Food Code on specific provisions; California Building Code (Title 24) adds energy efficiency requirements for kitchen ventilation (CEC Section 10.3) |

#### Texas

| Aspect | Detail |
|--------|--------|
| **Code name** | Texas Food Establishment Rules (TFER), 25 TAC 228 |
| **FDA Food Code relationship** | Adopts FDA Food Code 2017 by reference, with **specific sections not adopted** |
| **Sections NOT adopted** | 3-202.13, 3-202.14(C), 3-202.18(A), 5-102.11, 5-102.13, 5-102.14, 5-104.11(B)(1), 6-101.11(B), 6-202.18, and all of Chapter 8 (Compliance and Enforcement) |
| **Enforcement** | Texas DSHS and local health departments |
| **Kitchen design impact** | Modified floor surface requirements (6-101.11(B) not adopted); Texas-specific provisions supplement the FDA Food Code |

#### New York

| Aspect | Detail |
|--------|--------|
| **Code name** | NYC Health Code Article 81 (for NYC); NYS Sanitary Code Part 14 (for rest of state) |
| **FDA Food Code relationship** | Based on FDA 1997 Food Code with significant modifications; **NYDOH has not adopted** a recent FDA Food Code version |
| **Notable differences** | More stringent cold holding: originally **41 deg F** (vs FDA's 45 deg F recommendation at time of adoption); specific drainboard requirements; separate calorie posting requirements (Section 81.50) |
| **Enforcement** | NYC DOHMH (city); county health departments (rest of state) |
| **Kitchen design impact** | Article 81 requires adequate drainboard sizing specific to the establishment; may have additional equipment and facility requirements beyond FDA Food Code |

### 6.3 State Health Department Inspection Regimes

| State Approach | Description | Example States |
|---------------|-------------|----------------|
| **Risk-based frequency** | Inspection frequency based on risk category of establishment (high risk = more inspections) | Most states |
| **Fixed frequency** | Set number of inspections per year regardless of risk | Some states |
| **USDA overlay** | NSLP/SBP schools require 2 inspections per school year **in addition to** any state-mandated inspections | All participating states |
| **Scoring systems** | Letter grade (A/B/C), numerical score, or pass/fail | Varies by jurisdiction |

#### Common Inspection Focus Areas Relevant to Kitchen Design

| Category | Specific Items Inspected |
|----------|------------------------|
| **Temperature control** | Refrigerator/freezer temps, cooking temps, hot holding temps, cooling procedures |
| **Equipment condition** | Surfaces clean, in good repair; NSF or equivalent certification |
| **Facilities** | Floor/wall/ceiling condition; lighting adequacy; ventilation; pest control |
| **Plumbing** | Handwashing sinks accessible and supplied; backflow prevention; proper drainage |
| **Storage** | Food off floor (6" minimum); proper labeling; FIFO rotation; separation of chemicals |

### 6.4 Local Health Department Overlay Requirements

In addition to state codes, local health departments may impose additional requirements:

| Overlay Type | Examples |
|-------------|---------|
| **Plan review** | Detailed floor plans required before construction/renovation; specific local submission requirements |
| **Additional equipment requirements** | Some jurisdictions require specific equipment types (e.g., requirement for commercial dishwasher above a certain meal count) |
| **Enhanced structural requirements** | Local requirements for floor coving, wall materials, ceiling types |
| **Grease management** | Local sewer district may impose grease trap requirements beyond IPC |
| **Water quality** | Local requirements for water testing, filtration, or treatment |

#### Implications for the App

- **The app must be jurisdiction-aware**: Different states and even different counties within states have different requirements. The app should:
  1. Ask for the school's location (state, county, city) during setup
  2. Apply the appropriate version of the Food Code for that jurisdiction
  3. Flag items where known state variations exist
  4. Generate jurisdiction-specific inspection preparation checklists
- **Visually assessable**: Posted inspection scores/grades (OCR -- HIGH feasibility), license/permit dates (OCR -- HIGH feasibility)
- **Document review**: State-specific permits, local health department correspondence, variance documentation
- **Key feature**: Database of state-specific requirements mapped to FDA Food Code sections, with alerts when local thresholds differ from federal model code

---

## 7. Regulatory Overlap & Compliance Challenges

### 7.1 Multiple Regulatory Bodies

A school kitchen renovation or new construction project must satisfy **at least four independent regulatory authorities**, each with their own review and approval process:

| Authority | Primary Code/Standard | Focus Area | Inspection Type |
|-----------|----------------------|------------|----------------|
| **Local Health Department** | FDA Food Code (state-adopted version) | Food safety, sanitation, equipment, facilities | Pre-opening + ongoing (risk-based frequency + 2/year for NSLP/SBP) |
| **Fire Marshal** | NFPA 96, NFPA 101, IBC (fire provisions) | Fire suppression, hood systems, egress, exits, fire-rated assemblies | Plan review + annual or biennial |
| **Building Inspector** | IBC, IMC, IPC, IEC | Structural, mechanical, plumbing, electrical | Plan review + construction inspections + Certificate of Occupancy |
| **ADA Compliance** | ADA Standards, ANSI A117.1 (via IBC) | Accessibility for students and staff with disabilities | Plan review (building dept) + complaint-driven (DOJ) |

*Additional authorities may include: state Department of Education, state fire marshal (public school inspections), local sewer/water district, state labor department (OSHA), local zoning.*

### 7.2 Common Compliance Conflicts

| Conflict | Example | Resolution |
|----------|---------|-----------|
| **Fire egress vs. food safety** | Fire code requires self-closing doors on kitchen-to-corridor exits; health code wants open airflow for ventilation | Self-closing doors with hold-open devices connected to fire alarm system |
| **ADA clearance vs. equipment density** | ADA requires 36" minimum clear width and 60" turning radius; kitchen designers want maximum equipment density | Designate specific accessible work stations; ensure accessible path through kitchen |
| **Hood overhang vs. ceiling height** | NFPA 96 requires 6" hood overhang beyond equipment; limited ceiling height constrains hood placement | Wall-mounted canopy hoods; proximity hoods where ceiling height is insufficient |
| **Floor materials** | Health code requires smooth, nonabsorbent, easily cleanable floors; ADA and OSHA require slip-resistant floors | Quarry tile or textured epoxy that satisfies both (smooth for cleaning, textured for traction) |
| **Handwashing sink placement** | Health code requires convenient hand sinks in each prep/warewashing area; plumbing code limits number of fixtures per drain line | Design plumbing system to accommodate required number of hand sinks before equipment placement |
| **Grease trap vs. floor drain** | IPC requires emergency floor drain downstream of grease interceptor; health code prohibits standing water in floor drains | Self-priming trap drains; regular maintenance protocol |

### 7.3 Plan Review Process

#### Typical Plan Review Sequence for New Kitchen Construction/Renovation

| Phase | Step | Authority | Typical Timeline |
|-------|------|-----------|-----------------|
| **1** | Architectural plans prepared showing layout, equipment, finishes, plumbing, mechanical, electrical | Architect/Engineer | Weeks to months |
| **2** | Health department plan review | Local health department | 2-8 weeks |
| **3** | Fire marshal plan review | State/local fire marshal | 2-6 weeks |
| **4** | Building department plan review (structural, mechanical, plumbing, electrical) | Local building department | 4-12 weeks |
| **5** | ADA/accessibility review | Building department (typically part of step 4) | Concurrent |
| **6** | Permit issuance | All above | After all approvals |
| **7** | Construction with inspections at key milestones | Building inspector, fire marshal | During construction |
| **8** | Final inspections: health, fire, building, ADA | All above | Before opening |
| **9** | Certificate of Occupancy issued | Building department | Upon satisfactory completion |
| **10** | Pre-opening health inspection | Health department | Before food service begins |

#### Required Plan Submission Typically Includes

| Document | Required By |
|----------|------------|
| Floor plan with equipment layout | Health dept, building dept, fire marshal |
| Equipment schedule with NSF certification | Health dept |
| Finish schedule (floors, walls, ceilings) | Health dept, building dept |
| Plumbing plan (fixtures, grease traps, backflow) | Building dept (plumbing), health dept |
| Mechanical plan (hood system, makeup air, HVAC) | Building dept (mechanical), fire marshal |
| Electrical plan | Building dept (electrical) |
| Fire suppression plan | Fire marshal |
| Accessibility compliance documentation | Building dept |
| Menu and anticipated meal volume | Health dept |

### 7.4 Inspection Cycles and Re-Review Triggers

| Inspection Type | Frequency | Trigger for Re-Review |
|----------------|-----------|----------------------|
| **Health department routine** | 1-4 times/year (risk-based) + 2/year for NSLP/SBP | Equipment changes, menu changes, complaint |
| **Fire marshal** | Annual or biennial | New hood system, fire suppression modification, change in cooking equipment |
| **Hood system cleaning** | 3/6/12 months (per NFPA 96) | Based on cooking volume |
| **Fire suppression** | Semiannual | Required; any system activation triggers full re-inspection |
| **Building** | As-needed | Major renovation, change of use, structural modification |
| **ADA** | Complaint-driven (federal); plan review only (local) | Renovation, complaint, civil rights investigation |

#### Events That Trigger Full Plan Re-Review

| Trigger | Typical Authorities Requiring Re-Review |
|---------|----------------------------------------|
| Kitchen renovation > $X threshold (varies by jurisdiction) | All four (health, fire, building, ADA) |
| Change of occupancy use | Building dept, fire marshal |
| Addition of new cooking equipment types | Health dept, fire marshal (if grease-producing equipment added) |
| Modification of hood or fire suppression system | Fire marshal, building dept (mechanical) |
| Structural changes (walls, doors, floor) | Building dept, potentially all |
| ADA complaint | DOJ, building dept |

#### Resolution Process When Conflicts Arise

The general principle is: **the most stringent requirement prevails** unless a variance or alternative compliance method is approved. The resolution process typically follows:

1. **Identify the conflict** between two or more code requirements
2. **Consult the AHJ** (Authority Having Jurisdiction) for each applicable code
3. **Request a variance or alternative method** if a literal compliance creates a conflict
4. **Document the resolution** in writing from all involved authorities
5. **Design to the most restrictive standard** when possible to avoid conflicts

#### Implications for the App

- **The app should generate a multi-authority compliance matrix**: For each detected element in the kitchen, map it to all applicable codes and flag potential conflicts
- **Visually assessable**: The app can detect many of the elements that trigger compliance review (equipment types, hood presence, exit configurations, clearances) and proactively flag potential conflict areas
- **Document review**: Permits from all authorities, variance letters, plan review approval letters, inspection reports from all authorities
- **Key app feature**: Compliance dashboard showing status across all four regulatory domains (health, fire, building, accessibility) with cross-reference alerts for known conflict patterns

---

## 8. Consolidated App Implications

### 8.1 Detection Capabilities Mapped to Regulatory Requirements

This section maps the CV detection palette from [01_CV_CAPABILITIES.md](01_CV_CAPABILITIES.md) to specific regulatory thresholds.

#### Measurements the App Can Check (LiDAR / Spatial Analysis)

| Measurement | Threshold | Source Code | LiDAR Accuracy vs. Threshold | Verdict |
|-------------|-----------|-------------|------------------------------|---------|
| Counter/work surface height | <= 34" (ADA 804.3) | ADA 2010 | 1-5 cm vs. 86 cm threshold | **Achievable** |
| Service counter height | <= 36" (ADA 904) | ADA 2010 | 1-5 cm vs. 91 cm threshold | **Achievable** |
| Tray slide height | 28-34" (ADA) | ADAAG 5.5 | 1-5 cm vs. 71-86 cm range | **Achievable** |
| Serving line width | >= 36" (ADA) | ADAAG 5.5 | 1-5 cm vs. 91 cm threshold | **Achievable** |
| Corridor width | >= 72" (NFPA 101/IBC) | IBC Ch 10 | 1-5 cm vs. 183 cm threshold | **Achievable** |
| Aisle width | >= 30" (IBC/NFPA 101) | IBC Ch 10 | 1-5 cm vs. 76 cm threshold | **Achievable** |
| Door clear width | >= 32" (IBC) | IBC 1010.1.1 | 1-5 cm vs. 81 cm threshold | **Achievable** |
| Equipment-to-floor clearance | >= 6" (FDA Food Code) | FDA 4-402.11 | 1-5 cm vs. 15 cm threshold | **Marginal** (5 cm accuracy vs. 15 cm threshold) |
| Counter-mounted equip clearance | >= 4" (FDA Food Code) | FDA 4-402.12 | 1-5 cm vs. 10 cm threshold | **Marginal** |
| Hood overhang beyond equipment | >= 6" (NFPA 96) | NFPA 96 | 1-5 cm vs. 15 cm threshold | **Marginal** |
| Hood height above cooking surface | <= 48" (NFPA 96) | NFPA 96 | 1-5 cm vs. 122 cm threshold | **Achievable** |
| Wheelchair turning radius | >= 60" dia (ADA) | ADA 304 | 1-5 cm vs. 152 cm threshold | **Achievable** |
| Shelving height from floor | >= 6" (FDA Food Code) | FDA 4-402.11 | 1-5 cm vs. 15 cm threshold | **Marginal** |
| Dead-end corridor length | <= 50' sprinklered (NFPA 101) | NFPA 101 | Spatial mapping adequate | **Achievable** |

#### Objects the App Can Detect (CV Object Detection)

| Object | Regulatory Relevance | Detection Confidence |
|--------|---------------------|---------------------|
| **Exit signs** | IBC/NFPA 101 -- required at exits | **HIGH** |
| **Fire extinguishers** | NFPA 96 -- K-class within 30 ft | **HIGH** |
| **Handwashing sinks** | FDA Food Code -- one per area | **HIGH** |
| **Three-compartment sinks** | FDA Food Code -- required for manual warewashing | **HIGH** |
| **Cooking equipment** (ovens, fryers, grills) | IMC/NFPA 96 -- Type I hood required above | **HIGH** |
| **Range hoods** | NFPA 96 -- required over cooking equipment | **HIGH** |
| **Refrigerators/freezers** | FDA Food Code / USDA -- temperature storage | **HIGH** |
| **Thermometers on equipment** | FDA Food Code -- required in refrigeration | **MEDIUM** |
| **Fire suppression nozzles** | NFPA 96 -- UL 300 system required | **MEDIUM** |
| **Manual pull stations** | NFPA 96 -- required for fire suppression | **MEDIUM** |
| **Grease filters** (baffle type) | NFPA 96 -- required in Type I hoods | **MEDIUM** |
| **Floor drains** | IPC -- required near grease interceptor | **MEDIUM** |
| **Makeup air units/registers** | IMC/ASHRAE 154 -- required when exhaust > 400 CFM | **MEDIUM** |
| **Backflow prevention devices** | IPC -- required; usually concealed | **LOW** |
| **Grease interceptor** | IPC -- required; often below grade | **LOW** |
| **Fire suppression chemical tank** | NFPA 96 -- UL 300 system | **LOW** (often concealed) |

#### Labels/Text the App Can Read (OCR)

| Label Type | Regulatory Check | OCR Feasibility |
|-----------|-----------------|----------------|
| **Posted inspection report** | 7 CFR 210.13(a) -- must be current | **HIGH** |
| **Hood cleaning certificate** | NFPA 96 -- must be current per schedule | **HIGH** |
| **Equipment model/serial numbers** | Cross-reference NSF/UL certification databases | **HIGH** |
| **NSF/UL/ETL certification marks** | Health department requirement | **HIGH** |
| **Fire extinguisher service tag** | NFPA 10 -- annual inspection required | **HIGH** |
| **Fire suppression inspection tag** | NFPA 96 -- semiannual inspection required | **HIGH** |
| **Permit/license postings** | Various -- must be current | **HIGH** |
| **Chemical labels** | FDA Food Code -- proper storage | **HIGH** |
| **Temperature logs** (posted) | HACCP requirements | **MEDIUM** |

#### Conditions the App Can Assess (Surface/Condition Analysis)

| Condition | Regulatory Relevance | Detection Feasibility |
|-----------|---------------------|----------------------|
| **Cracked floor/wall tile** | FDA Food Code 6-501.12 -- surfaces must be maintained | **HIGH** (91-95% accuracy) |
| **Rust/corrosion on equipment** | FDA Food Code 4-501.11 -- equipment maintained in good repair | **HIGH** (F1 ~0.71) |
| **Visible mold** | FDA Food Code 6-501.12 -- surfaces kept clean | **HIGH** (87-90% accuracy) |
| **Staining/discoloration** | FDA Food Code -- clean surfaces | **MEDIUM** |
| **Missing/damaged coved base** | FDA Food Code 6-201.18 -- coved juncture required | **MEDIUM** |
| **Grease buildup on hood/filters** | NFPA 96 -- cleaning required per schedule | **MEDIUM** |
| **Standing water on floors** | Safety hazard; drainage issue | **MEDIUM** |
| **Lighting adequacy** (qualitative) | FDA Food Code 6-303.11 -- foot-candle minimums | **MEDIUM** (qualitative only) |
| **Floor slip coefficient** | ADA 302 -- slip-resistant surfaces | **LOW** (requires physical testing) |
| **Exact lux levels** | FDA Food Code 6-303.11 | **LOW** (requires lux meter) |
| **Airflow/ventilation adequacy** | ASHRAE 62.1, ASHRAE 154, IMC | **LOW** (requires instruments) |
| **Equipment internal temperature** | FDA Food Code, USDA storage | **LOW** (requires thermometer) |

### 8.2 Recommended Compliance Check Workflow

```
SCAN PHASE
  1. LiDAR scan of full kitchen space --> room geometry, clearances, heights
  2. Multi-view photos of all areas --> equipment identification, labels, conditions
  3. Close-up photos of certification marks, posted documents, tags

AUTOMATED ANALYSIS PHASE
  4. Spatial compliance checks:
     |-- ADA clearances (counter heights, widths, turning radii)
     |-- Fire egress (corridor widths, exit access, dead-end lengths)
     |-- Equipment spacing (floor clearance, wall clearance)
     |-- Hood sizing (overhang, height above cooking surface)

  5. Equipment inventory:
     |-- Identify all cooking equipment --> map to hood requirements
     |-- Identify all sinks --> verify handwashing sink count per area
     |-- Identify all refrigeration --> verify thermometer presence
     |-- Read certification marks --> verify NSF/UL/ETL status

  6. Document/label reading:
     |-- Posted inspection report (date, score, deficiencies)
     |-- Hood cleaning certificate (date, next due)
     |-- Fire suppression tag (last inspection date)
     |-- Equipment model/serial numbers

  7. Condition assessment:
     |-- Floor, wall, ceiling surface conditions
     |-- Equipment condition (rust, damage, wear)
     |-- Visible cleanliness
     |-- Lighting adequacy (qualitative flag)

OUTPUT PHASE
  8. Multi-authority compliance report:
     |-- Health Department compliance status (FDA Food Code)
     |-- Fire Marshal compliance status (NFPA 96, NFPA 101)
     |-- Building Code compliance status (IBC, IMC, IPC)
     |-- ADA/Accessibility compliance status
     |-- Cross-reference alerts for potential conflicts

  9. Action items:
     |-- VIOLATIONS: Items that appear to violate code (immediate attention)
     |-- FLAGS: Items that need manual verification (recommend professional inspection)
     |-- RECOMMENDATIONS: Best practice improvements beyond minimum code
     |-- CHECKLIST: Items requiring physical testing (temperatures, airflow, lux)
```

### 8.3 Critical Numeric Thresholds Reference Card

This is the quick-reference card of every numeric threshold the app should check against:

#### Dimensions and Clearances

| Threshold | Value | Source |
|-----------|-------|--------|
| Work surface height (accessible) | <= 34" | ADA 804.3 |
| Service counter height | <= 36" | ADA 904 |
| Tray slide height | 28-34" | ADAAG 5.5 |
| Serving line width | >= 36" (42" preferred) | ADAAG 5.5 |
| Corridor width (educational) | >= 72" | IBC / NFPA 101 |
| Aisle width | >= 30" | IBC / NFPA 101 |
| Door clear width | >= 32" | IBC 1010.1.1 |
| Wheelchair turning space | >= 60" diameter | ADA 304 |
| Forward reach (unobstructed) | 15-48" | ADA 308.2 |
| Side reach (unobstructed) | 15-48" | ADA 308.3 |
| Equipment floor clearance | >= 6" | FDA 4-402.11 |
| Counter-mount equipment clearance | >= 4" | FDA 4-402.12 |
| Storage shelving floor clearance | >= 6" | FDA 4-402.11 |
| Coved base radius | >= 3/8" | FDA 6-201.18 |
| Coved base height | >= 4" | FDA 6-201.18 |
| Hood overhang beyond equipment | >= 6" all open sides | NFPA 96 |
| Hood height above cooking surface | <= 48" (wall canopy) | NFPA 96 |
| Duct clearance from combustibles | >= 18" | NFPA 96 |
| Fire extinguisher travel distance | <= 30' | NFPA 96 |
| Dead-end corridor (sprinklered) | <= 50' | NFPA 101 |
| Dead-end corridor (unsprinklered) | <= 20' | NFPA 101 |
| Exit access travel distance (sprinklered) | <= 200' | NFPA 101 |
| U-shaped kitchen clearance | >= 60" | ANSI A117.1 |
| Galley kitchen clearance | >= 40" | ANSI A117.1 |

#### Temperatures

| Threshold | Value | Source |
|-----------|-------|--------|
| Frozen storage | <= 0 deg F (-18 deg C) | USDA / FDA |
| Refrigerated storage | <= 41 deg F (5 deg C) | FDA Food Code |
| Dry storage (optimal) | 50 deg F (10 deg C) | USDA |
| Dry storage (maximum) | < 85 deg F (29 deg C) | USDA |
| Handwashing water | >= 85 deg F (29.4 deg C) | FDA 2022 |
| Wash sink (1st compartment) | >= 100 deg F (38 deg C) | FDA Food Code |
| Rinse sink (2nd compartment) | >= 110 deg F (43 deg C) | FDA Food Code |
| Manual hot water sanitizing | >= 171 deg F (77 deg C) | FDA Food Code |
| Mechanical warewash final rinse | >= 180 deg F (82 deg C) | FDA Food Code |
| Booster heater incoming water | >= 140 deg F (60 deg C) | FDA Food Code |

#### Lighting

| Area | Minimum | Source |
|------|---------|--------|
| Food preparation / work with food | 50 fc (540 lux) | FDA 6-303.11(A) |
| Handwashing, warewashing, equipment storage, self-service, toilets | 20 fc (220 lux) | FDA 6-303.11(B) |
| Walk-in refrigerators, dry storage, during cleaning | 10 fc (110 lux) | FDA 6-303.11(C) |

#### Ventilation

| Parameter | Value | Source |
|-----------|-------|--------|
| Makeup air trigger | Exhaust > 400 CFM | IMC 505.4 |
| Cafeteria outdoor air rate | 7.5 CFM/person + 0.18 CFM/sf | ASHRAE 62.1 |
| Kitchen outdoor air rate | 7.5 CFM/person + 0.12 CFM/sf | ASHRAE 62.1 |
| Light duty exhaust (wall canopy) | 200 CFM/linear ft | IMC 507.5 |
| Medium duty exhaust (wall canopy) | 300 CFM/linear ft | IMC 507.5 |
| Heavy duty exhaust (wall canopy) | 400 CFM/linear ft | IMC 507.5 |
| Extra-heavy duty exhaust (wall canopy) | 550 CFM/linear ft | IMC 507.5 |

---

## Sources

### Federal Regulations and Guidance

- [7 CFR Part 210 -- National School Lunch Program (eCFR)](https://www.ecfr.gov/current/title-7/subtitle-B/chapter-II/subchapter-A/part-210)
- [7 CFR 210.13 -- Facilities Management (LII/Cornell)](https://www.law.cornell.edu/cfr/text/7/210.13)
- [USDA FNS: Developing a School Food Safety Program Based on HACCP](https://www.fns.usda.gov/fs/developing-school-food-safety-program-based-process-approach-haccp)
- [USDA FNS: Health and Safety Inspection Requirements](https://www.fns.usda.gov/cn/health-and-safety-inspection-requirements)
- [Federal Register: School Food Safety Inspections (2005)](https://www.federalregister.gov/documents/2005/06/15/05-11805/school-food-safety-inspections)
- [Federal Register: School Food Safety Program Based on HACCP (2008)](https://www.federalregister.gov/documents/2008/08/05/E8-17941/school-food-safety-program-based-on-hazard-analysis-and-critical-control-point-principles)

### FDA Food Code

- [FDA Food Code 2022: Full Document](https://www.fda.gov/media/164194/download)
- [FDA Food Code 2022 Chapter 4: Equipment, Utensils, and Linens](https://www.c-uphd.org/documents/eh/2022-FDA-Food-Code-Chapter-4-Equipment-Utensils-and-Linens.pdf)
- [FDA Food Code 2022 Chapter 5: Water, Plumbing, and Waste](https://www.c-uphd.org/documents/eh/2022-FDA-Food-Code-Chapter-5-Water-Plumbing-and-Waste.pdf)
- [FDA Food Code 2022 Chapter 6: Physical Facilities](https://www.c-uphd.org/documents/eh/2022-FDA-Food-Code-Chapter-6-Physical-Facilities.pdf)
- [FDA Food Code 2022 Summary of Changes](https://www.fda.gov/media/164231/download)
- [FDA: State Retail and Food Service Codes by State](https://cacmap.fda.gov/food/fda-food-code/state-retail-and-food-service-codes-and-regulations-state)
- [FDA: Food Code Adoption by State and Territorial Agencies](https://www.fda.gov/media/107543/download)
- [Supplement to the 2022 Food Code (2024)](https://www.fda.gov/media/183271/download)

### USDA Commodities Storage

- [CA Dept of Education: Proper Storage Temperatures for USDA Foods](https://www.cde.ca.gov/ls/nu/fd/properstoragetemperatures.asp)
- [CA Dept of Education: Storage and Inventory Management of USDA Foods](https://www.cde.ca.gov/ls/nu/fd/mbfdp012018.asp)
- [Arctic Walk-Ins: USDA Storage Requirements for K-12 Schools](https://arcticwalkins.com/usda-storage-requirements-for-k-12-school-walk-ins/)

### Building and Fire Codes

- [IBC 2021 Chapter 3: Occupancy Classification (ICC)](https://codes.iccsafe.org/content/IBC2021P1/chapter-3-occupancy-classification-and-use)
- [IBC 2021 Chapter 10: Means of Egress (ICC)](https://codes.iccsafe.org/content/IBC2021P2/chapter-10-means-of-egress)
- [IMC 2021 Chapter 4: Ventilation (ICC)](https://codes.iccsafe.org/content/IMC2021P1/chapter-4-ventilation)
- [IMC 2021 Chapter 5: Exhaust Systems (ICC)](https://codes.iccsafe.org/content/IMC2021P1/chapter-5-exhaust-systems)
- [IPC 2018 Chapter 10: Traps, Interceptors, and Separators (ICC)](https://codes.iccsafe.org/content/IPC2018/chapter-10-traps-interceptors-and-separators)
- [IBC Occupancy Classifications Explained (NFSA)](https://nfsa.org/2024/01/08/occupancy-classifications-in-the-ibc/)
- [IBC Chapter 10 Occupant Load Calculator (US Made Supply)](https://usmadesupply.com/resources/building-codes-standards/emergency-life-safety/ibc-chapter-10)

### NFPA Standards

- [NFPA 96 Standard Development](https://www.nfpa.org/codes-and-standards/nfpa-96-standard-development/96)
- [NFPA 96 Overview (Koorsen)](https://blog.koorsen.com/overview-of-nfpa-96-standard-for-ventilation-control-and-fire-protection-of-commercial-cooking-operations)
- [NFPA 96 Commercial Kitchen Standard (US Made Supply)](https://usmadesupply.com/resources/building-codes-standards/fire-suppression-standards/nfpa-96)
- [NFPA 96 Standard PDF (Aerovent)](https://www.aerovent.com/wp-content/uploads/sites/2/2021/12/NFPA-96-Standard-for-Ventilation-Control-and-Fire-Protection-of-Commercial-Cooking-Operations-FE-3400.pdf)
- [NFPA 96 Guide: Exhaust Systems (Hood Filters)](https://blog.hoodfilters.com/2024/03/19/nfpa-guide-part-1-commercial-kitchen-exhaust-systems-and-grease-removal-essentials/)
- [NFPA 96 Standards Guide (Clean Hoods Express)](https://cleanhoodsexpress.com/nfpa-96-standards-a-guide-for-commercial-kitchens/)
- [NFPA 101 Life Safety Code Overview (PBFPE)](https://pbfpe.com/post/nfpa-101-life-safety-code-requirements)
- [NFPA 101 Code Development](https://www.nfpa.org/codes-and-standards/nfpa-101-standard-development/101)
- [Fire Safety in Schools: Inspection Checklist (QRFS)](https://blog.qrfs.com/339-school-fire-and-life-safety-inspection-checklist/)

### ADA and Accessibility

- [ADA Standards Section 804: Kitchens and Kitchenettes](https://www.ada-compliance.com/ada-compliance/804-kitchens-and-kitchenettes)
- [ADA Standards Section 308: Reach Ranges](https://www.ada-compliance.com/ada-compliance/308-reach-ranges)
- [ADA Standards Section 904: Check-Out Aisles and Sales/Service Counters](https://www.ada-compliance.com/ada-compliance/904-check-out-aisles-and-sales-and-service-counters)
- [U.S. Access Board: ADA Accessibility Standards](https://www.access-board.gov/ada/)
- [U.S. Access Board: Chapter 8 Special Rooms and Elements](https://www.access-board.gov/aba/chapter/ch08/)
- [2010 ADA Standards for Accessible Design (ADA.gov)](https://www.ada.gov/law-and-regs/design-standards/2010-stds/)
- [ANSI A117.1-2017 (ANSI Blog)](https://blog.ansi.org/ansi/icc-ansi-a117-1-2017-accessible-buildings/)
- [ICC A117.1-2017 Preview (ANSI)](https://webstore.ansi.org/preview-pages/ICC/preview_ICC+A117.1-2017.pdf)
- [ADA Requirements for Schools (Accessibility Checker)](https://www.accessibilitychecker.org/blog/ada-requirements-for-schools-standards-and-compliance/)

### NSF/ANSI and Equipment Standards

- [NSF Food Equipment Standards Portfolio](https://www.nsf.org/nsf-standards/standards-portfolio/food-equipment-standards)
- [NSF Food Equipment Certification](https://www.nsf.org/food-beverage/commercial-food-equipment/food-equipment-certification)
- [FDA: List of American National Standards for Food Equipment](https://www.fda.gov/media/133482/download)
- [NSF/ANSI 51 Food Equipment Materials Update (NSF)](https://www.nsf.org/knowledge-library/nsf-ansi-51-food-equipment-materials-update-implications-for-your-products)
- [NSF/ANSI 51-2023 (ANSI Blog)](https://blog.ansi.org/ansi/nsf-ansi-51-2023-food-equipment-materials/)
- [NSF Standards for Foodservice Equipment 101 (FoodSafePal)](https://foodsafepal.com/nsf-standards-food-service-equipment/)
- [UL Foodservice Equipment Sanitation Certification](https://www.ul.com/services/foodservice-equipment-sanitation-certification)
- [Equipment Certification Marks Explained (WebstaurantStore)](https://www.webstaurantstore.com/guide/616/restaurant-equipment-certification-marks-explained.html)
- [Guide to Commercial Food Equipment Certification Marks (MPC)](https://www.mpofcinci.com/blog/commercial-food-equipment-certification-marks-what-they-are-and-why-theyre-important/)

### ASHRAE Ventilation Standards

- [ASHRAE 62.1-2022 (ICC Safe)](https://codes.iccsafe.org/content/ASHRAE6212022P1)
- [ASHRAE Standards 62.1 & 62.2 (ASHRAE Bookstore)](https://www.ashrae.org/technical-resources/bookstore/standards-62-1-62-2)
- [ASHRAE 154 Ventilation for Commercial Cooking (GlobalSpec)](https://standards.globalspec.com/std/14584424/154)
- [ASHRAE 154-2016 (ICC Safe)](https://codes.iccsafe.org/content/ASHRAE1542016P1)
- [Commercial Kitchen Ventilation Design Guide (California Energy Wise)](https://www.caenergywise.com/design-guides/CKV-Design-Guide-1_Selecting_Sizing_Hoods.pdf)

### State-Specific Codes

- [California Retail Food Code (CalCode) (Sacramento County)](https://emd.saccounty.gov/EH/FoodProtect-RetailFood/Pages/CalCode.aspx)
- [California Retail Food Program (CDPH)](https://www.cdph.ca.gov/Programs/CEH/DFDCS/Pages/FDBPrograms/FoodSafetyProgram/RetailFoodProgram.aspx)
- [Texas Food Establishment Rules (TFER) 25 TAC 228 (DSHS)](https://www.dshs.texas.gov/retail-food-establishments)
- [Texas Food Establishment Rules PDF (DSHS)](https://www.dshs.texas.gov/sites/default/files/foodestablishments/pdf/GuidanceDocs/TFER-2021_TAC-228_August-2021.pdf)
- [NYC Health Code Article 81: Food Preparation and Food Establishments](https://on.nyc.gov/article-81-health-code)
- [NYC Article 81 Full Text (PDF)](https://www.nyc.gov/assets/doh/downloads/pdf/rii/article81-book.pdf)
- [FDA Food Code Adoption Patterns (FDLI)](https://www.fdli.org/2022/11/adoption-patterns-of-the-fda-food-code-across-us-states/)
- [11 States Have Adopted 2022 FDA Food Code (Food Safety)](https://www.food-safety.com/articles/10947-11-states-and-counting-have-adopted-most-recent-fda-food-code-as-of-2024)

### Plan Review and Compliance

- [King County Plan Review Guide for Food Service (PDF)](https://cdn.kingcounty.gov/-/media/king-county/depts/dph/documents/certificates-permits-licenses/food-worker-business-permits/plan-guide-food-service-plan-review.pdf)
- [California Plan Check Guide for Retail Food Facilities (UC Berkeley)](https://ehs.berkeley.edu/sites/default/files/publications/plan_check_guide.pdf)
- [Restaurant Compliance Checklist (Infodeck)](https://www.infodeck.io/resources/fnb-compliance-checklist/)
- [Commercial Kitchen Hood Code Requirements (WebstaurantStore)](https://www.webstaurantstore.com/article/625/kitchen-hood-code-requirements.html)
- [Commercial Kitchen Hood Worksheet (Snohomish County)](https://snohomishcountywa.gov/DocumentCenter/View/7461/Commercial-Kitchen-Hood-Worksheet)
