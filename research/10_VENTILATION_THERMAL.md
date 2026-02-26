# Ventilation & Thermal Comfort in K-12 School Kitchens

*Comprehensive reference for the Space Scanner app -- ventilation code requirements, hood system design, thermal comfort, energy efficiency, and indoor air quality thresholds the app should check against*

---

## Purpose

This document catalogs the ventilation standards, thermal comfort criteria, and indoor air quality requirements relevant to K-12 school kitchen environments. Kitchen workers face extreme heat -- a compounding factor for fatigue and injury that goes beyond code compliance. For each topic, it identifies what can be **visually assessed** by the app (leveraging the detection palette from [01_CV_CAPABILITIES.md](01_CV_CAPABILITIES.md)), what requires **physical measurement**, and the specific **numeric thresholds** the app should reference. It cross-references ventilation and HVAC requirements established in [02_REGULATORY_CODE_LANDSCAPE.md](02_REGULATORY_CODE_LANDSCAPE.md), worker thermal comfort from [03_ERGONOMICS_WORKER_SAFETY.md](03_ERGONOMICS_WORKER_SAFETY.md), and ventilation/HVAC problems cataloged in [07_COMMON_PROBLEMS.md](07_COMMON_PROBLEMS.md).

---

## 1. Ventilation Code Requirements

### 1.1 ASHRAE 62.1: Ventilation for Acceptable Indoor Air Quality

ASHRAE Standard 62.1-2022 establishes minimum ventilation rates for commercial buildings, including school kitchens and dining areas. It uses a dual-rate procedure combining a **people outdoor air rate** (Rp, in CFM/person) and an **area outdoor air rate** (Ra, in CFM/sq ft).

#### Ventilation Rates for School Kitchen and Dining Spaces (ASHRAE 62.1-2022, Table 6-1)

| Space Type | People Outdoor Air Rate (Rp) | Area Outdoor Air Rate (Ra) | Default Occupant Density (persons/1,000 sf) | Exhaust Classification |
|------------|------------------------------|----------------------------|---------------------------------------------|------------------------|
| **Kitchen/cooking** | 7.5 CFM/person | 0.12 CFM/sf | 5 | -- (exhausted via hoods) |
| **Cafeteria/dining room** | 7.5 CFM/person | 0.18 CFM/sf | 100 | -- |
| **Classroom (ages 5-8)** | 10 CFM/person | 0.12 CFM/sf | 25 | -- |
| **Classroom (ages 9+)** | 7.5 CFM/person | 0.12 CFM/sf | 35 | -- |
| **Food service (restaurant dining)** | 7.5 CFM/person | 0.18 CFM/sf | 70 | -- |
| **Break room** | 5 CFM/person | 0.06 CFM/sf | 25 | -- |

#### Key Provisions for Kitchen Ventilation

- **Transfer air**: Kitchen areas may use transfer air from adjacent dining areas to satisfy ventilation requirements. This is common practice -- cafeteria air is drawn through service openings into the kitchen and exhausted through cooking hoods.
- **Exhaust air**: Kitchen exhaust via cooking hoods counts toward overall building exhaust but must be fully replaced by outdoor, transfer, or recirculated air.
- **Minimum outdoor air**: Even when transfer air is used, the kitchen must receive its calculated share of outdoor air per ASHRAE 62.1 Table 6-1.
- **Air class**: Kitchen exhaust is classified as **Class 4** (highly objectionable fumes or gases), meaning it cannot be recirculated to other spaces and must be exhausted directly outdoors.

#### Calculation Example: School Cafeteria (4,000 sf, 250 students)

| Component | Calculation | Result |
|-----------|-------------|--------|
| People outdoor air (Rp) | 250 persons x 7.5 CFM/person | 1,875 CFM |
| Area outdoor air (Ra) | 4,000 sf x 0.18 CFM/sf | 720 CFM |
| **Breathing zone outdoor airflow (Vbz)** | Rp + Ra | **2,595 CFM** |
| Zone air distribution effectiveness (Ez) | Typical ceiling supply = 1.0 | 1.0 |
| **Zone outdoor airflow (Voz)** | Vbz / Ez | **2,595 CFM** |

### 1.2 ASHRAE 154: Ventilation for Commercial Cooking Operations

ASHRAE Standard 154-2016 specifically addresses the design of commercial cooking ventilation systems and provides performance-based guidance that complements the prescriptive requirements in the IMC and NFPA 96.

#### Scope and Relationship to Other Standards

| Attribute | Detail |
|-----------|--------|
| **Current edition** | ASHRAE 154-2016 |
| **Scope** | Exhaust hoods, exhaust systems, and replacement (makeup) air systems for commercial cooking |
| **References** | ASHRAE 62.1 (indoor air quality), NFPA 96 (fire protection) |
| **Relationship** | ASHRAE 154 provides performance-based design guidance; NFPA 96 provides prescriptive fire safety requirements; IMC provides code-enforceable minimums |

#### Key Design Parameters

| Parameter | Requirement | Notes |
|-----------|-------------|-------|
| **Exhaust rate determination** | Based on hood style, cooking equipment type, and desired capture performance | Listed hoods may operate at lower exhaust rates than unlisted hoods |
| **Replacement air volume** | 80--90% of exhaust volume (remaining 10--20% from transfer air) | Maintains slight negative pressure in kitchen |
| **Maximum displacement velocity** | Makeup air velocity at hood face shall not exceed **75 FPM** | Higher velocities disrupt hood capture |
| **Short-circuit prevention** | Replacement air outlets shall not be positioned to short-circuit exhaust | Supply air must mix with room air before reaching hood |
| **Listed vs. unlisted hoods** | Listed hoods (tested to UL 710) can operate at **30% lower** exhaust rates than unlisted hoods of comparable size | Significant energy and cost savings |

### 1.3 International Mechanical Code (IMC) -- Chapter 5: Exhaust Systems

The IMC (2021 edition; 2024 published) provides the code-enforceable requirements for commercial kitchen ventilation. Most states and local jurisdictions adopt the IMC with amendments.

#### Commercial Kitchen Exhaust Requirements

| Requirement | IMC Section | Detail |
|-------------|-------------|--------|
| **Type I hoods required** | 507.2 | Over equipment producing **grease-laden vapors** (fryers, grills, broilers, ranges, ovens cooking with oil/fat) |
| **Type II hoods required** | 507.3 | Over equipment producing **heat, steam, moisture only** (dishwashers, steamers, steam kettles, ovens not producing grease) |
| **Hood overhang** | 507.2.4 | Minimum **6 inches (152 mm)** beyond equipment on all open sides |
| **Hood height** | 507.2.6 | Maximum **48 inches (1,219 mm)** above cooking surface for wall-canopy hoods |
| **Makeup air required** | 505.4 | When exhaust exceeds **400 CFM**, makeup air must be approximately equal to exhaust volume |
| **Makeup air controls** | 505.4 | Must start and operate **simultaneously** with exhaust system |
| **Duct velocity (Type I)** | 506.3.3 | Minimum **500 FPM** in Type I exhaust ducts (unless listed for lower velocity) |

#### Exhaust Flow Rates by Hood Type and Equipment Duty (IMC Section 507.5)

| Equipment Duty | Wall-Canopy Hood (CFM/linear ft) | Single Island Canopy (CFM/linear ft) | Double Island Canopy (CFM/linear ft) | Eyebrow/Proximity Hood (CFM/linear ft) |
|----------------|----------------------------------|--------------------------------------|--------------------------------------|-----------------------------------------|
| **Light** | 200 | 400 | 250 | 150 |
| **Medium** | 300 | 500 | 300 | 200 |
| **Heavy** | 400 | 600 | 400 | 250 |
| **Extra-Heavy** | 550 | 700 | 550 | 350 |

*Note: The highest duty-rated appliance under a hood determines the exhaust rate for the entire hood.*

#### Equipment Duty Classifications (IMC Table 507.2.1)

| Duty Level | Equipment Examples |
|------------|-------------------|
| **Light** | Ovens (no open top), steam tables, dishwashers (Type II hood) |
| **Medium** | Pasta cookers, electric/gas ranges, griddles, steam kettles |
| **Heavy** | Electric/gas broilers, fryers, tilting skillets, wok ranges |
| **Extra-Heavy** | Solid fuel cooking (wood, charcoal, mesquite), high-volume charbroilers |

### 1.4 NFPA 96: Ventilation Control and Fire Protection of Commercial Cooking Operations

NFPA 96 (2021 edition) is the primary standard governing hood system fire protection. It is cross-referenced extensively in [02_REGULATORY_CODE_LANDSCAPE.md](02_REGULATORY_CODE_LANDSCAPE.md), Section 2.4.

#### Key Requirements Summary

| Requirement | NFPA 96 Section | Detail |
|-------------|-----------------|--------|
| **Hood required** | 5.1 | Over all commercial cooking equipment producing grease-laden vapors |
| **Hood overhang** | 5.2.1.1 | Minimum **6 inches** beyond equipment on all open sides |
| **Hood height** | 5.2.1.2 | Maximum **48 inches** above cooking surface (wall canopy) |
| **Grease removal devices** | 6.1 | Listed baffle-type filters required in Type I hoods |
| **Fire suppression** | 10.1 | UL 300-listed automatic extinguishing system required |
| **Manual pull station** | 10.5.3 | Required for activation of fire suppression |
| **K-class extinguisher** | 10.6 | Required within **30 feet travel distance** of cooking equipment |
| **Duct clearance** | 7.3.2 | Minimum **18 inches** from combustible construction |
| **Duct material** | 7.1.1 | 16-gauge carbon steel or 18-gauge stainless steel minimum |
| **Duct slope** | 7.4 | Minimum 2% for runs up to 75 ft; 8% for runs over 75 ft |
| **Access panels** | 7.5.1 | Required every **12 feet** and at changes in direction |

### 1.5 State and Local Amendments

Many states and local jurisdictions amend the base IMC, NFPA 96, and ASHRAE standards. Common amendments include:

| Jurisdiction | Amendment | Impact |
|-------------|-----------|--------|
| **California** | Title 24 (CEC Section 10.3) adds energy efficiency requirements for kitchen ventilation | Requires DCKV or equivalent for hoods >5,000 CFM; stricter makeup air tempering |
| **New York City** | NYC Mechanical Code adds local fire department approval requirements | Additional plan review and inspection by FDNY |
| **Texas** | TCEQ air quality permits for commercial cooking exhaust | May require pollution control units for rooftop emissions in some jurisdictions |
| **Massachusetts** | MGL Chapter 148, Section 26G | Requires state fire marshal review for all commercial cooking hoods |
| **Florida** | Florida Building Code amendments | Enhanced hurricane resistance for rooftop exhaust equipment |

#### Implications for the App

- **Visually assessable**: Hood presence over cooking equipment (object detection -- HIGH feasibility), hood type identification (Type I vs. Type II -- MEDIUM feasibility), equipment type under hood to determine duty level (MEDIUM feasibility), hood overhang relative to equipment (LiDAR measurement -- HIGH feasibility), makeup air diffuser/register presence (MEDIUM feasibility)
- **Document review**: Mechanical permits, hood testing reports, air balance reports, state/local amendments
- **Physical testing**: Actual CFM measurements, air velocity at hood face, makeup air balance, temperature
- **Key checks**: Every grease-producing appliance must be under a Type I hood; every heat/steam appliance under at least a Type II hood; hood must extend 6" beyond equipment on all open sides

---

## 2. Kitchen Hood Systems

### 2.1 Type I Hoods: Grease-Laden Vapor Removal

Type I hoods are required over any equipment producing grease-laden vapors. They are the most critical ventilation component in a commercial kitchen.

#### Design Requirements

| Parameter | Requirement | Source |
|-----------|-------------|--------|
| **When required** | Over fryers, grills, broilers, ranges, wok stations, tilt skillets, and any equipment cooking with oil/fat | NFPA 96 Section 5.1; IMC 507.2 |
| **Capture velocity** | Minimum **50 FPM** at the cooking surface (industry standard); some jurisdictions require **150--250 FPM** at the hood face | ASHRAE 154; manufacturer specifications |
| **Overhang** | Minimum **6 inches (152 mm)** beyond equipment on all open sides | IMC 507.2.4; NFPA 96 5.2.1.1 |
| **Mounting height** | Typically **78--84 inches** above finished floor (18--48 inches above cooking surface) | IMC 507.2.6 (48" max above cooking surface) |
| **Grease filters** | UL 1046-listed baffle-type grease filters required | NFPA 96 Section 6.1 |
| **Fire suppression** | UL 300-listed automatic extinguishing system with nozzles over each piece of covered equipment | NFPA 96 Section 10.1 |
| **UL listing** | UL 710 listing required for hoods serving as part of fire protection system | IMC 507.2.2 |

#### Hood Styles and Applications

| Hood Style | Configuration | Best For | Exhaust Efficiency | Typical Exhaust Rate |
|------------|---------------|----------|-------------------|---------------------|
| **Wall-canopy** | Mounted against wall, canopy over equipment | Most school kitchens; equipment against walls | High (wall blocks one open side) | 200--550 CFM/linear ft by duty |
| **Single island canopy** | Suspended from ceiling, open on all sides | Free-standing cooking islands | Lowest (open on all sides, requires highest CFM) | 400--700 CFM/linear ft by duty |
| **Double island canopy** | Suspended from ceiling, two cooking lines back-to-back | Large production kitchens | Moderate (back-to-back equipment blocks center) | 250--550 CFM/linear ft by duty |
| **Proximity (low-profile)** | Mounted at back/above equipment at low height (backshelf, eyebrow, pass-over) | Combi ovens, ranges, small footprint kitchens | Highest (close to cooking surface, less air volume needed) | 150--350 CFM/linear ft by duty |

#### Exhaust Rate Calculation Example: School Kitchen with 8-ft Wall-Canopy Hood

| Equipment Under Hood | Duty Level | Hood Length | Rate (Wall-Canopy) | Required Exhaust |
|---------------------|------------|-------------|---------------------|------------------|
| Gas range (4 burners) + Gas griddle + Fryer | **Heavy** (fryer governs) | 8 linear ft | 400 CFM/linear ft | **3,200 CFM** |

### 2.2 Type II Hoods: Heat and Moisture Only

Type II hoods are required over equipment that produces heat, steam, or moisture but **not** grease-laden vapors.

| Parameter | Requirement | Notes |
|-----------|-------------|-------|
| **When required** | Over dishwashers, steamers, steam kettles, ovens (no grease), hot water equipment | IMC 507.3 |
| **Exhaust rate** | Lower than Type I; typically **100--250 CFM/linear ft** | Based on equipment heat output |
| **Overhang** | Minimum **6 inches** beyond equipment on open sides | IMC 507.3 |
| **Fire suppression** | **Not required** | No grease-laden vapors |
| **Grease filters** | **Not required** (no grease removal needed) | May use moisture-capture filters |
| **Duct material** | Standard galvanized steel permitted | Less stringent than Type I duct requirements |

#### Common Type II Applications in School Kitchens

| Equipment | Heat/Steam Output | Hood Sizing Consideration |
|-----------|-------------------|---------------------------|
| **Conveyor dishwasher** | 20,000--60,000 BTU/hr + heavy steam | Often requires largest Type II hood; condensation management critical |
| **Door-type dishwasher** | 15,000--30,000 BTU/hr + moderate steam | Condensation capture hood recommended |
| **Combi oven (steam mode)** | 15,000--40,000 BTU/hr | Requires Type I when used in combination (roast + steam) mode |
| **Steam kettle** | 10,000--25,000 BTU/hr | Steam plume rises vertically; adequate overhang essential |
| **Warming/holding cabinets** | 2,000--8,000 BTU/hr | May not require hood if low heat output |

### 2.3 Ventless/Recirculating Hoods (UL 710B)

Ventless hoods filter and recirculate air back into the kitchen rather than exhausting to the exterior. They are governed by UL 710B.

#### When Permitted

| Condition | Detail |
|-----------|--------|
| **Equipment type** | Electric appliances **only**; gas equipment is not permitted under ventless hoods |
| **Grease emission threshold** | Appliance effluent must contain **5 mg/m3 or less** of grease when tested at 500 CFM per UL 710B |
| **Listing requirement** | Hood must be listed and labeled to **UL 710B** |
| **Jurisdiction approval** | Not permitted in all jurisdictions; verify with local AHJ (authority having jurisdiction) |
| **Fire suppression** | Built-in fire suppression system required within UL 710B-listed unit |
| **Supplemental ventilation** | Type II hood or additional mechanical ventilation may still be required for heat removal |
| **Room ventilation** | Kitchen must still meet ASHRAE 62.1 ventilation requirements via other means |

#### Advantages and Limitations for School Kitchens

| Advantage | Limitation |
|-----------|-----------|
| No exterior ductwork required | Electric appliances only -- no gas cooking |
| Lower installation cost ($3,000--$8,000 vs. $10,000--$30,000+ for ducted) | Higher ongoing filter replacement costs ($500--$1,500/year) |
| Suitable for portable/satellite kitchens | Does not remove heat from kitchen (recirculates warm air) |
| Can be installed in spaces where roof penetration is not possible | Limited grease removal capacity; not for high-volume frying |
| No makeup air system required | May not meet local code in all jurisdictions |

### 2.4 UL Listing Requirements

| Standard | Scope | Requirement |
|----------|-------|-------------|
| **UL 710** | Exhaust hoods for commercial cooking equipment | Tests grease extraction efficiency, fire resistance, and structural integrity. Listed hoods may operate at **30% lower** exhaust rates than unlisted hoods. |
| **UL 710B** | Recirculating systems for commercial cooking | Tests filtration efficiency, grease capture, fire suppression integration. Restricts to electric appliances with effluent <= 5 mg/m3 grease. |
| **UL 300** | Fire testing of fire extinguishing systems for commercial cooking equipment | Required for all Type I hood fire suppression systems. Tests suppression of cooking media fires (oil, grease). |
| **UL 1046** | Grease filters for exhaust ducts | Tests grease extraction efficiency. All baffle filters in Type I hoods must be UL 1046-listed. |

---

## 3. Makeup Air Systems

### 3.1 Why Makeup Air Is Critical

Every cubic foot of air exhausted through kitchen hoods must be replaced. Without adequate makeup air, the kitchen operates under **negative pressure**, causing:

| Problem | Mechanism | Consequence |
|---------|-----------|-------------|
| **Reduced hood capture** | Hood draws replacement air from wherever it can -- gaps, doors, windows -- instead of through designed supply | Up to **30--50% reduction** in hood capture efficiency |
| **Doors difficult to open/close** | Negative pressure differential across doorways | Safety hazard; workers struggle with heavy doors; exterior doors slam |
| **Back-drafting of gas appliances** | Negative pressure reverses chimney/vent draft | **Carbon monoxide** pulled into occupied space -- life safety hazard |
| **Discomfort** | Uncontrolled cold/hot air drafts from exterior gaps | Worker complaints; energy waste; HVAC system overload |
| **Noise** | Air whistling through gaps under doors and through openings | Annoying and can indicate significant pressure imbalance |

**Code threshold**: IMC Section 505.4 requires makeup air when exhaust exceeds **400 CFM**. UMC Section 511.3 limits negative pressure to **0.02 inches water column** maximum.

### 3.2 Makeup Air Ratio and Sizing

| Parameter | Recommended Value | Source |
|-----------|-------------------|--------|
| **Makeup air as % of exhaust** | **80--90%** of total exhaust volume | ASHRAE 154; industry standard |
| **Remaining 10--20%** | Provided by transfer air from adjacent spaces (cafeteria, corridors) | Maintains slight negative pressure to prevent kitchen odors from migrating out |
| **Maximum negative pressure** | 0.02 inches water column | UMC 511.3 |
| **Maximum makeup air velocity at hood face** | 75 FPM | ASHRAE 154 |
| **Temperature differential** | Makeup air temp shall not exceed **10 deg F** differential from conditioned space temp | Industry best practice |

#### Sizing Example: School Kitchen with 3,200 CFM Exhaust

| Component | Calculation | Result |
|-----------|-------------|--------|
| Total exhaust (from hood) | 8 ft wall-canopy, heavy duty | 3,200 CFM |
| Dedicated makeup air (85%) | 3,200 x 0.85 | **2,720 CFM** |
| Transfer air from cafeteria (15%) | 3,200 x 0.15 | **480 CFM** |
| Kitchen outdoor air (ASHRAE 62.1) | 3 workers x 7.5 + 800 sf x 0.12 | 118.5 CFM (satisfied by transfer + makeup) |

### 3.3 Supply Methods

| Method | Description | Advantages | Disadvantages |
|--------|-------------|------------|---------------|
| **Direct makeup air (through hood plenum)** | Tempered air delivered through perforated plenum at rear of hood | Efficient delivery; prevents cross-drafts; ASHRAE 154 preferred method | Requires integral hood plenum; higher hood cost |
| **Indirect (through HVAC system)** | Building HVAC system provides conditioned air to kitchen | Tempered air (heated/cooled); comfortable for workers | HVAC system must be sized for kitchen exhaust replacement; energy-intensive |
| **Short-circuit (front-face discharge)** | Air supplied through perforated panel at front face of hood | Simple installation | **Controversial**: can disrupt hood capture by blowing supply air into capture zone; not recommended by ASHRAE 154 |
| **Transfer air from adjacent spaces** | Air flows from cafeteria/corridors into kitchen through openings | No additional equipment; uses air already conditioned for dining space | Relies on adequate dining room HVAC sizing; may create odor path from kitchen to dining |
| **Dedicated makeup air unit (MAU)** | Standalone rooftop or wall-mounted unit providing tempered outdoor air | Independent control; properly sized | Installation cost ($5,000--$15,000); rooftop space; tempering energy cost |

### 3.4 Tempering Requirements

Makeup air must be tempered (heated in winter, cooled in summer) to prevent worker discomfort and HVAC overload.

| Climate | Tempering Need | Method | Energy Impact |
|---------|----------------|--------|---------------|
| **Cold climates** (heating degree days > 5,000) | Heating to 55--65 deg F minimum | Gas-fired MAU, hot water coil, electric heat | Significant energy cost; 3,200 CFM at 0 deg F to 60 deg F = ~230,000 BTU/hr |
| **Hot/humid climates** (cooling degree days > 2,000) | Cooling to 80--85 deg F maximum | DX cooling coil in MAU, evaporative cooling | Lower energy impact than heating; may not be required if kitchen heat load is dominant |
| **Moderate climates** | Minimal tempering | Economizer mode; direct outdoor air | Lowest energy cost |

### 3.5 Energy Recovery from Exhaust

| Technology | Efficiency | Application | Limitation |
|------------|-----------|-------------|------------|
| **Air-to-air heat exchanger (plate type)** | 50--70% sensible heat recovery | Preheats incoming makeup air using warm kitchen exhaust | Grease fouling risk; requires grease removal upstream |
| **Run-around coil loop** | 40--55% sensible heat recovery | Separates exhaust and supply streams (no cross-contamination) | Lower efficiency; requires glycol loop |
| **Heat pipe** | 45--65% sensible heat recovery | Passive; no moving parts | Fixed capacity; cannot modulate |
| **Wrap-around heat pipe** | 30--50% sensible + latent | DX cooling system enhancement | Requires specific system design |

**Important**: Energy recovery from Type I (grease-laden) exhaust requires pre-filtering to prevent grease accumulation on heat exchanger surfaces. Many manufacturers offer integrated grease filtration + heat recovery systems.

### 3.6 Demand-Controlled Ventilation (DCV)

Demand-controlled kitchen ventilation (DCKV) modulates exhaust and makeup air based on actual cooking load rather than running at constant full speed.

| Attribute | Detail |
|-----------|--------|
| **How it works** | Sensors in exhaust duct detect temperature and/or optical density (smoke/grease); VFDs on exhaust fans modulate speed accordingly |
| **Sensor types** | Optical (infrared opacity), temperature, combination optical + temperature |
| **Minimum exhaust** | System maintains minimum exhaust rate (typically 40--50% of design) even during idle |
| **ASHRAE 90.1 requirement** | DCKV required for kitchens with exhaust **>5,000 CFM** in new construction (2019+ edition) |
| **Energy savings** | **30--50%** reduction in fan energy; **20--40%** reduction in HVAC conditioning energy |
| **Payback period** | Typically **1--3 years** depending on utility rates and operating hours |
| **Current adoption in schools** | Virtually absent in existing school kitchens (per ASHRAE/DOE studies) |

---

## 4. Heat Load & Thermal Comfort

### 4.1 Kitchen Heat Sources and BTU Output

Commercial kitchen equipment generates enormous heat loads. The ASHRAE Fundamentals Handbook (Chapter 18) provides recommended heat gain rates from typical commercial cooking appliances, based on research project RP-1362.

#### Typical Equipment Heat Output

| Equipment | Energy Input (BTU/hr) | Sensible Heat to Space -- Hooded (BTU/hr) | Sensible Heat to Space -- Unhooded (BTU/hr) | Notes |
|-----------|----------------------|-------------------------------------------|---------------------------------------------|-------|
| **Gas range (6-burner)** | 180,000--240,000 | 18,000--36,000 | 72,000--120,000 | 60% of heat exhausted when hooded |
| **Gas convection oven** | 40,000--60,000 | 8,000--12,000 | 24,000--36,000 | Substantial radiant heat during door opening |
| **Gas fryer (single, 50 lb)** | 90,000--150,000 | 9,000--22,500 | 45,000--75,000 | High latent heat from oil vapors |
| **Gas charbroiler (3 ft)** | 90,000--120,000 | 13,500--24,000 | 54,000--72,000 | Highest radiant output per linear ft |
| **Electric combi oven (full-size)** | 40,000--60,000 (equiv.) | 6,000--9,000 | 20,000--30,000 | Lower heat-to-space than gas; steam adds latent |
| **Electric griddle (3 ft)** | 30,000--45,000 (equiv.) | 6,000--9,000 | 15,000--22,500 | Radiant heat dominant |
| **Steam kettle (40 gal, gas)** | 100,000--130,000 | 10,000--19,500 | 50,000--65,000 | Major steam/latent load when lid removed |
| **Conveyor dishwasher** | 60,000--100,000 | 12,000--20,000 | 30,000--50,000 | Largest steam/moisture source in kitchen |
| **Steam table (5-well)** | 10,000--15,000 | 3,000--4,500 | 5,000--7,500 | Low heat but continuous operation |
| **Warming/holding cabinet** | 2,000--8,000 | 1,000--2,400 | 1,000--4,000 | Low heat output |

*Note: Under a hood, approximately 60--80% of convective and latent heat is captured by the exhaust system, leaving only radiant heat to warm the kitchen space. Without a hood, the full convective and radiant load enters the occupied zone.*

#### Other Heat Sources in School Kitchens

| Source | Approximate Heat Contribution | Notes |
|--------|------------------------------|-------|
| **Worker body heat** | 800--1,200 BTU/hr per worker (moderate-to-heavy activity) | ASHRAE Fundamentals; 5--8 workers = 4,000--9,600 BTU/hr |
| **Lighting** | 3.41 BTU/hr per watt | LED: ~1,500--3,000 BTU/hr for typical kitchen; fluorescent: 3,000--6,000 BTU/hr |
| **Refrigeration equipment (condenser heat)** | 2,000--15,000 BTU/hr per unit | Walk-in compressors located in kitchen add significant load |
| **Dishwasher heat and steam** | 30,000--50,000 BTU/hr | Often the single largest unhooded heat source if Type II hood is missing |
| **Solar gain through windows/skylights** | Variable: 100--250 BTU/hr per sq ft of glass | West-facing windows most problematic in afternoon |

#### Typical Total Kitchen Heat Load

| Kitchen Size | Cooking Capacity | Estimated Total Heat Load (hooded) | Estimated Total Heat Load (unhooded or poor ventilation) |
|-------------|------------------|-----------------------------------|--------------------------------------------------------|
| **Small (400--600 sf, 200 meals)** | Light-to-medium duty | 40,000--80,000 BTU/hr | 100,000--200,000 BTU/hr |
| **Medium (600--1,000 sf, 500 meals)** | Medium-to-heavy duty | 80,000--150,000 BTU/hr | 200,000--400,000 BTU/hr |
| **Large (1,000--1,500 sf, 1,000+ meals)** | Heavy duty | 150,000--300,000 BTU/hr | 400,000--750,000 BTU/hr |

### 4.2 Typical Kitchen Ambient Temperatures

Temperatures in commercial kitchens vary dramatically by zone and ventilation quality.

| Zone | Typical Temperature Range | Conditions |
|------|--------------------------|------------|
| **At cooking line (under functional hood)** | 85--100 deg F (29--38 deg C) | Radiant heat from equipment; hood captures convective plume |
| **At cooking line (undersized/missing hood)** | 100--120 deg F (38--49 deg C) | Full convective + radiant load; documented in OSHA hospital food service eTool |
| **Prep areas (away from cooking)** | 75--85 deg F (24--29 deg C) | Transfer heat from cooking line |
| **Warewashing area (dishwasher)** | 85--100 deg F (29--38 deg C) | Steam from dishwasher; high humidity |
| **Walk-in cooler (interior)** | 35--41 deg F (2--5 deg C) | FDA Food Code requirement |
| **Dry storage** | 50--85 deg F (10--29 deg C) | Should not exceed 85 deg F per USDA commodity guidelines |
| **Cafeteria/dining** | 68--76 deg F (20--24 deg C) | ASHRAE 55 comfort zone for sedentary occupants |

ASHRAE recommends commercial kitchen environments be maintained at **70--75 deg F with 50% relative humidity** -- a target that is rarely achieved at the cooking line but should be the design goal for the overall kitchen space.

### 4.3 Worker Thermal Comfort Standards

#### ASHRAE Standard 55: Thermal Environmental Conditions for Human Occupancy

ASHRAE 55-2023 establishes thermal comfort criteria based on six factors:

| Factor | Kitchen Impact |
|--------|---------------|
| **Air temperature** | Elevated (85--120 deg F near cooking line) |
| **Mean radiant temperature** | Very high near ovens, grills, fryers (radiant surfaces 300--600 deg F) |
| **Air speed** | Variable; often low at cooking line, drafty near makeup air |
| **Humidity** | Elevated (60--80% near dishwashers, steam equipment) |
| **Metabolic rate** | High (2.0--3.0 met for kitchen work vs. 1.0--1.2 for office work) |
| **Clothing insulation** | Moderate (chef coat/apron: ~0.7--1.0 clo) |

**Key finding**: Research by Simone et al. (2013) found that the standard **Predicted Mean Vote (PMV)** method in ASHRAE 55 is not directly applicable to commercial kitchens due to the extreme combination of high air temperature, high radiant asymmetry, and elevated metabolic rates. Kitchen workers routinely operate outside the ASHRAE 55 comfort zone.

#### Recommended Kitchen Work Area Temperatures

| Standard/Source | Recommended Range | Notes |
|-----------------|-------------------|-------|
| **ASHRAE** | 70--75 deg F (21--24 deg C) | Design target for kitchen space (rarely achieved at cooking line) |
| **OSHA** | 68--78 deg F (20--26 deg C) | General workplace recommendation (no specific kitchen standard) |
| **Industry best practice** | 75--80 deg F (24--27 deg C) | Achievable with proper ventilation; still above office comfort but manageable |
| **Danger zone** | Above **85 deg F (29 deg C)** | Heat stress risk increases significantly; OSHA General Duty Clause applies |

### 4.4 Heat-Related Illness Risk

#### OSHA Heat Illness Prevention

OSHA does not have a specific heat standard for indoor workplaces. However:

| Mechanism | Detail |
|-----------|--------|
| **General Duty Clause (Section 5(a)(1))** | Employers must provide a workplace "free from recognized hazards that are causing or are likely to cause death or serious physical harm" -- including heat |
| **National Emphasis Program (NEP) on Heat** | Launched 2022; OSHA inspects workplaces when heat index exceeds **80 deg F** |
| **Proposed heat rule** | OSHA proposed federal heat illness prevention standard in 2024 (29 CFR 1910, Subpart T); includes trigger temperatures and mandatory rest breaks |
| **State standards** | California (Cal/OSHA), Oregon, Washington, Minnesota have state-specific indoor heat standards with mandatory triggers |

#### NIOSH Recommended Exposure Limits (REL) for Heat

NIOSH publication 2016-106, "Criteria for a Recommended Standard: Occupational Exposure to Heat and Hot Environments," provides:

| Category | Metric | Threshold | Work/Rest Cycle |
|----------|--------|-----------|-----------------|
| **Recommended Alert Limit (RAL)** -- unacclimatized workers | WBGT | Varies by metabolic rate; ~77--82 deg F WBGT for moderate work | Continuous work possible below RAL |
| **Recommended Exposure Limit (REL)** -- acclimatized workers | WBGT | Varies by metabolic rate; ~82--87 deg F WBGT for moderate work | Continuous work possible below REL |
| **Ceiling Limit** | WBGT | **86 deg F (30 deg C) WBGT** for acclimatized; **82 deg F (28 deg C) WBGT** for unacclimatized | Mandatory work stoppage above ceiling |

*WBGT = Wet Bulb Globe Temperature, which accounts for air temperature, humidity, radiant heat, and air movement. A dry-bulb temperature of 95 deg F at 50% humidity produces a WBGT of approximately 86 deg F.*

#### Heat-Related Illness Progression

| Stage | Symptoms | Dry-Bulb Temp Range (approx.) | Action Required |
|-------|----------|-------------------------------|-----------------|
| **Heat rash** | Red skin, prickly sensation | >80 deg F prolonged exposure | Cool environment, dry skin |
| **Heat cramps** | Muscle cramps, heavy sweating | >85 deg F with exertion | Rest, hydration, electrolytes |
| **Heat exhaustion** | Heavy sweating, weakness, dizziness, nausea, headache | >90 deg F with exertion | Immediate rest, cooling, hydration; medical attention if symptoms persist |
| **Heat stroke** | Body temp >104 deg F, confusion, loss of consciousness, hot/dry skin | >95 deg F or sustained >85 deg F with high exertion | **Medical emergency**; call 911; cool body immediately |

### 4.5 Implications for Kitchen Workers

Kitchen workers face compounding heat exposure factors that other indoor workers do not:

| Factor | Impact | Cross-Reference |
|--------|--------|-----------------|
| **Prolonged standing near hot surfaces** | Radiant heat from equipment at 300--600 deg F surface temps | [03_ERGONOMICS_WORKER_SAFETY.md](03_ERGONOMICS_WORKER_SAFETY.md) -- prolonged standing |
| **Heavy PPE** (aprons, gloves, chef coats) | Reduces body's ability to dissipate heat | [03_ERGONOMICS_WORKER_SAFETY.md](03_ERGONOMICS_WORKER_SAFETY.md) -- PPE requirements |
| **High metabolic rate** | Kitchen work = 2.0--3.0 met (moderate-to-heavy physical labor) | Increased internal heat production |
| **Steam exposure** | High humidity reduces evaporative cooling (sweat cannot evaporate) | Warewashing area most affected |
| **Dehydration** | Workers may not hydrate adequately during service rushes | Fatigue, reduced cognitive function, increased accident risk |
| **Fatigue cascade** | Heat + standing + repetitive motion + time pressure = injury risk | [07_COMMON_PROBLEMS.md](07_COMMON_PROBLEMS.md) -- ergonomic issues |

---

## 5. Energy Efficiency in Kitchen HVAC

### 5.1 Kitchen HVAC as Percentage of Building Energy

Commercial kitchens are extraordinarily energy-intensive environments. Food service buildings use **5--7 times more energy per square foot** than other commercial buildings, with high-volume operations using up to **10 times** more.

| Metric | Value | Source |
|--------|-------|--------|
| **Kitchen ventilation as % of kitchen energy** | 24--36% of total food service facility energy | DOE/PNNL studies |
| **Kitchen HVAC as % of total school energy** | 15--25% (kitchen + cafeteria combined) | ASHRAE Handbook -- HVAC Applications |
| **Energy use intensity (EUI) -- food service** | 200--500 kBTU/sf/year | ENERGY STAR Portfolio Manager |
| **Energy use intensity (EUI) -- K-12 school (overall)** | 60--80 kBTU/sf/year | ENERGY STAR Portfolio Manager |
| **Fan energy -- kitchen exhaust** | 0.5--2.0 kW per 1,000 CFM | Varies by fan efficiency and duct static pressure |
| **Conditioning cost -- makeup air** | $0.50--$2.00/CFM/year | Depends on climate, fuel cost, tempering method |

### 5.2 Demand-Controlled Kitchen Ventilation (DCKV)

DCKV is the single most impactful energy efficiency measure for commercial kitchen ventilation.

#### How DCKV Works

| Component | Function |
|-----------|----------|
| **Exhaust hood sensors** | Optical (infrared opacity) and/or temperature sensors in exhaust duct detect cooking effluent density |
| **Variable frequency drives (VFDs)** | Modulate exhaust fan speed from 40--100% based on sensor input |
| **Makeup air modulation** | Makeup air unit tracks exhaust fan speed to maintain balance |
| **Control system** | PLC or BMS integration; ramps fan speed up during heavy cooking, down during idle/light load |

#### Energy Savings Documentation

| Study/Source | Savings Documented | Context |
|-------------|-------------------|---------|
| **ENERGY STAR DCKV Technology Profile** | **30--50% fan energy reduction** | General commercial kitchens |
| **DOE Better Buildings Program** | **40--60% total kitchen HVAC savings** | Full-service restaurants |
| **California Title 24 CASE Study** | **50--70% exhaust fan energy reduction** | California commercial kitchens |
| **ASHRAE 90.1 basis** | **50% minimum reduction capability** required for compliance | Kitchens >5,000 CFM exhaust |
| **Melink Corp field studies** | **Average 52% reduction** in kitchen HVAC energy | 1,000+ installations nationwide |
| **Typical annual savings** | **$2,000--$8,000/year** per hood system | Depends on size, operating hours, climate |
| **Typical payback** | **1--3 years** | Without utility incentives; faster with rebates |

#### ASHRAE 90.1 Compliance Paths for Kitchen Ventilation Energy

ASHRAE 90.1 (2019+) requires energy-saving measures for kitchens with exhaust >5,000 CFM. Three compliance paths:

| Path | Requirement | Description |
|------|-------------|-------------|
| **1. Transfer air** | >= 50% of replacement air from transfer air (would otherwise be exhausted) | Use cafeteria exhaust air as kitchen makeup air |
| **2. DCKV system** | Capable of >= 50% reduction in exhaust and replacement air | Sensors + VFDs on exhaust and makeup fans |
| **3. Energy recovery** | Recover >= 40% of sensible energy from >= 50% of exhaust | Air-to-air heat exchanger on kitchen exhaust |

### 5.3 ENERGY STAR Commercial Kitchen Ventilation

ENERGY STAR promotes kitchen ventilation efficiency through:

- **DCKV technology profile** and specification requirements
- **CKV best practices** documentation for design professionals
- **Utility rebate coordination** for DCKV installations (rebates typically $500--$2,000 per hood)
- **ENERGY STAR Commercial Kitchen Package** combining efficient hoods, DCKV, and efficient cooking equipment

### 5.4 High-Efficiency Hood Designs

| Hood Type | Energy Advantage | Applicable Scenario |
|-----------|------------------|---------------------|
| **Proximity (low-profile) hoods** | Require **40--60% less** exhaust than wall-canopy hoods for same equipment | Combi ovens, ranges; works where ceiling height allows low mounting |
| **Side-loading hoods** | Capture plume at appliance discharge point; reduce CFM | Conveyor ovens, broilers with side discharge |
| **UL 710-listed hoods** | Can operate at **30% lower** exhaust rate than unlisted hoods | All new installations should specify listed hoods |
| **Short-circuit hood with backwall supply** | Delivers tempered makeup air directly into hood plenum | Reduces conditioning load of makeup air |
| **Auto-start hoods** | Hood runs only when equipment below is operating | Eliminates idle exhaust during non-cooking hours |

### 5.5 Building Envelope Considerations

| Factor | Impact on Kitchen HVAC | Recommendation |
|--------|----------------------|----------------|
| **Roof insulation** | Heat gain through roof directly above kitchen adds to cooling load | Minimum R-25 roof insulation (ASHRAE 90.1); cool roof coating reduces gain by 10--25% |
| **Windows** | Solar gain adds to already excessive kitchen heat | Minimize windows in kitchen; use low-E glazing (SHGC < 0.25) where windows exist |
| **Wall insulation** | Reduces heat transfer from exterior | Minimum R-13 continuous insulation per ASHRAE 90.1 |
| **Air sealing** | Uncontrolled air infiltration undermines makeup air balance | Seal all penetrations; weather-strip doors to exterior |

---

## 6. Cafeteria Ventilation

### 6.1 Separate HVAC Zone (Essential)

The cafeteria/dining area **must** be on a separate HVAC zone from the kitchen. This is the single most important cafeteria ventilation design decision.

| Reason | Detail |
|--------|--------|
| **Different thermal loads** | Kitchen: dominated by cooking heat (may need cooling even in winter). Cafeteria: variable occupancy, solar gain, typical commercial loads |
| **Different occupancy patterns** | Kitchen: 5--10 workers all day. Cafeteria: 0 to 300+ students in 30-minute waves |
| **Odor control** | Kitchen generates cooking odors, grease, and combustion products. Cafeteria should have neutral air quality |
| **Pressure relationship** | Kitchen should be at **slight negative pressure** relative to cafeteria (odors flow from dining to kitchen, not reverse) |
| **Temperature control** | Kitchen may be 85--100+ deg F. Cafeteria must maintain 68--76 deg F for student comfort |

### 6.2 ASHRAE 62.1 Ventilation Rates for Cafeterias

| Parameter | Requirement | Calculation |
|-----------|-------------|-------------|
| **People outdoor air rate (Rp)** | 7.5 CFM/person | Based on max occupancy |
| **Area outdoor air rate (Ra)** | 0.18 CFM/sf | Based on cafeteria floor area |
| **Default occupant density** | 100 persons per 1,000 sf | Per ASHRAE 62.1 Table 6-1 |
| **Zone air distribution effectiveness** | 1.0 (ceiling supply) to 1.2 (floor supply) | Per ASHRAE 62.1 Table 6-4 |

#### Sizing Example: 4,000 sf Cafeteria, 300 Students

| Component | Calculation | Result |
|-----------|-------------|--------|
| People outdoor air | 300 x 7.5 | 2,250 CFM |
| Area outdoor air | 4,000 x 0.18 | 720 CFM |
| **Breathing zone outdoor air** | Sum | **2,970 CFM** |
| Zone outdoor airflow (Ez = 1.0) | 2,970 / 1.0 | **2,970 CFM outdoor air required** |

### 6.3 Odor Control from Kitchen to Cafeteria

| Strategy | Method | Effectiveness |
|----------|--------|---------------|
| **Pressure differential** | Maintain kitchen at -0.01 to -0.02 in. w.c. relative to cafeteria | Primary method; prevents odor migration |
| **Serving line separation** | Physical barrier (sneeze guards, half-walls) between kitchen and serving area | Reduces both thermal and odor transfer |
| **Transfer air design** | Intentional airflow from cafeteria into kitchen through service openings | Provides kitchen makeup air while preventing odor backflow |
| **Vestibule/air curtain** | Air curtain or vestibule between kitchen and dining | Effective for open floor plans |
| **Carbon filtration** | Activated carbon filters on recirculated cafeteria air | Addresses residual odors; maintenance-intensive |

### 6.4 CO2-Based Demand Ventilation for Variable Occupancy

School cafeterias have highly variable occupancy -- empty for hours, then packed for 30-minute lunch periods. CO2-based demand-controlled ventilation (DCV) optimizes energy use.

| Parameter | Value |
|-----------|-------|
| **CO2 setpoint** | 800--1,000 ppm (corresponds to ASHRAE 62.1 outdoor air rates) |
| **Outdoor CO2 baseline** | ~420 ppm (current ambient) |
| **Maximum indoor CO2** | 1,000 ppm (ventilation adequacy indicator per ASHRAE 62.1 Appendix C) |
| **Sensor location** | Return air duct or 3--6 ft above floor in breathing zone |
| **Ramp-up time** | System should reach full outdoor air within 15 minutes of occupancy increase |
| **Energy savings** | 20--40% of cafeteria HVAC energy vs. constant-volume ventilation |

### 6.5 Temperature and Humidity Control

| Parameter | Target | Standard |
|-----------|--------|----------|
| **Temperature** | 68--76 deg F (20--24 deg C) | ASHRAE 55 comfort zone for sedentary occupants |
| **Relative humidity** | 30--60% | ASHRAE 62.1 (IAQ); ASHRAE 55 (comfort) |
| **Air movement** | 20--40 FPM in occupied zone | ASHRAE 55 (draft risk < 15% dissatisfied) |
| **Temperature stratification** | < 5 deg F between ankle (4") and head (67") | ASHRAE 55 vertical air temp difference |

---

## 7. Duct Design & Maintenance

### 7.1 Kitchen Exhaust Duct Requirements (NFPA 96)

Kitchen exhaust ductwork for Type I hoods must meet stringent requirements due to the fire hazard posed by grease accumulation.

#### Material and Construction

| Requirement | Specification | NFPA 96 Section |
|-------------|---------------|-----------------|
| **Material (carbon steel)** | Minimum **16-gauge (0.0575")** thickness | 7.1.1 |
| **Material (stainless steel)** | Minimum **18-gauge (0.0450")** thickness | 7.1.1 |
| **All joints and seams** | **Continuous liquid-tight external weld** | 7.1.3 |
| **Penetrations** | All duct penetrations welded or sealed with 1,500 deg F-rated sealant | 7.1.3 |
| **Clearance to combustibles** | Minimum **18 inches** (single-wall, unenclosed duct) | 7.3.2 |
| **Reduced clearance** | **3 inches** to limited-combustible; **0 inches** to noncombustible material | 7.3.2 (exceptions) |
| **Enclosure (if in shaft)** | 1-hour fire-rated shaft construction | 7.3.3 |

#### Slope and Drainage

| Requirement | Specification | Purpose |
|-------------|---------------|---------|
| **Horizontal runs <= 75 ft** | Minimum **2% slope** toward hood or cleanout | Grease drainage to collection point |
| **Horizontal runs > 75 ft** | Minimum **8% slope** toward hood or cleanout | Prevents grease pooling in long runs |
| **Minimum slope (alternate)** | 1/4 inch per foot toward hood or grease reservoir | Some jurisdictions use this prescriptive measure |
| **Grease drip trays/reservoirs** | Required at low points and cleanout locations | Collect accumulated grease |

#### Access and Cleanout

| Requirement | Specification | Purpose |
|-------------|---------------|---------|
| **Access panels** | Required every **12 feet** and at every change in direction | Cleaning access per NFPA 96 7.5.1 |
| **Access panel material** | Same material and gauge as duct | Structural and fire integrity |
| **Access panel gaskets** | Rated for **1,500 deg F**; grease-tight seal | Fire resistance |
| **Access panel fasteners** | Stainless steel; tool-removable | Cleaning crew access |
| **Cleanout at base of vertical riser** | Required at bottom of each vertical duct section | Grease accumulation point |

### 7.2 Duct Cleaning Schedules (NFPA 96, Table 11.4)

| Equipment/Cooking Type | Inspection Frequency | Cleaning Trigger | Fire Risk |
|----------------------|---------------------|-----------------|-----------|
| **Solid fuel cooking** (wood, charcoal, mesquite) | **Monthly** | Any visible accumulation | Extreme |
| **High-volume cooking** (24-hour, charbroiling, wok) | **Quarterly** | Grease depth > 2 mm (0.078") on any surface | Very High |
| **Moderate-volume cooking** (standard school kitchens) | **Semi-annually** | Grease depth > 2 mm (0.078") | High |
| **Low-volume cooking** (warming, steam only, seasonal) | **Annually** | Grease depth > 2 mm (0.078") | Moderate |

#### Grease Accumulation Thresholds

| Measurement Point | Maximum Allowed Depth | Action Required | Source |
|-------------------|----------------------|-----------------|--------|
| **Duct surfaces** | **2 mm (0.078 in / 2,000 microns)** | Immediate cleaning required | NFPA 96 Table 11.4 |
| **Fan housing** | **3.175 mm (0.125 in / 3,175 microns)** | Immediate cleaning required | NFPA 96 |
| **Post-cleaning standard** | **0.050 mm (0.002 in / 50 microns)** or bare metal | Cleaning must reach this standard | NFPA 96 |

**Cleaning must reach bare metal** per IKECA (International Kitchen Exhaust Cleaning Association) or NFPA 96 guidelines. A cleaning certificate must be posted and current.

### 7.3 Rooftop Exhaust Fan Maintenance

| Maintenance Item | Frequency | Purpose |
|-----------------|-----------|---------|
| **Belt inspection/replacement** | Quarterly | Prevent belt failure and loss of exhaust |
| **Bearing lubrication** | Semi-annually | Prevent bearing failure |
| **Fan blade cleaning** | Per duct cleaning schedule | Grease accumulation reduces airflow and creates fire hazard |
| **Hinge kit inspection** (upblast fans) | Semi-annually | Ensure fan tips up for duct access and cleaning |
| **Grease containment system** | Monthly inspection | Prevent grease from accumulating on roof (fire hazard, roof damage) |
| **VFD inspection** (if DCKV) | Annually | Verify proper operation and calibration |
| **Motor amp draw check** | Annually | Detect degradation before failure |

---

## 8. Indoor Air Quality

### 8.1 Cooking Emissions

Commercial cooking generates a complex mixture of pollutants that affect both worker health and the dining environment.

#### Primary Pollutants from Cooking Operations

| Pollutant | Source | Health Concern | Typical Level (unhooded cooking) |
|-----------|--------|---------------|--------------------------------|
| **Particulate matter (PM2.5)** | Oil/grease aerosolization, combustion products | Respiratory irritation, aggravated asthma, cardiovascular effects | 50--500 micrograms/m3 (pan-frying peak: 92.9 micrograms/m3 in residential studies; commercial much higher) |
| **Particulate matter (PM10)** | Larger particles from cooking | Respiratory irritation | 100--1,000+ micrograms/m3 during heavy cooking |
| **Volatile organic compounds (VOCs)** | Heated cooking oils, food decomposition | Eye/nose/throat irritation, headaches, long-term cancer risk | Varies widely by cooking method; pan-frying: 260 ppb peak |
| **Carbon monoxide (CO)** | Incomplete combustion of gas appliances | Headache, dizziness, death at high concentrations | 5--35 ppm (gas cooking); OSHA PEL: 50 ppm TWA |
| **Nitrogen dioxide (NO2)** | Gas combustion | Respiratory irritation, aggravated asthma | 50--400 ppb (gas cooking); EPA NAAQS: 100 ppb 1-hr |
| **Formaldehyde (HCHO)** | Heated cooking oils, gas combustion | Eye/nose irritation, carcinogen (IARC Group 1) | 10--100 ppb during cooking; OSHA PEL: 750 ppb TWA |
| **Acrolein** | Overheated cooking oils | Severe eye and respiratory irritation | 10--50 ppb during high-heat oil cooking; OSHA PEL: 100 ppb ceiling |
| **Polycyclic aromatic hydrocarbons (PAHs)** | Charbroiling, grilling, high-heat oil | Carcinogenic (several PAHs are IARC Group 1/2A) | Variable; highest with charbroiling and solid fuel |

#### Emission Levels by Cooking Method (Relative PM2.5)

| Method | Relative PM2.5 Emission | Equipment Example |
|--------|------------------------|-------------------|
| **Pan-frying** | Very High (100%) | Gas range, flat griddle |
| **Stir-frying** | High (29%) | Wok station |
| **Deep-frying** | Moderate (8%) | Fryer |
| **Charbroiling** | Very High (comparable to pan-frying) | Gas/electric charbroiler |
| **Baking/roasting** | Low-to-moderate | Convection oven, combi oven |
| **Steaming/boiling** | Very Low (0.8%) | Steam kettle, steamer |
| **Air frying** | Very Low (0.6%) | Air fryer/combi oven in air fry mode |

### 8.2 Impact on Worker Health

Kitchen workers face chronic exposure to cooking emissions during extended shifts.

| Health Concern | Evidence | Mitigation |
|---------------|----------|------------|
| **Respiratory symptoms** | Studies show increased rates of chronic cough, phlegm production, and rhinitis in commercial kitchen workers | Adequate hood exhaust; avoid cooking above oil smoke points |
| **Occupational asthma** | Cooking fumes recognized trigger; reported in bakers (flour dust), cooks (oil fume) | Proper ventilation; respiratory protection when cleaning hoods |
| **Lung function decline** | Long-term cooking fume exposure associated with decreased FEV1/FVC ratio | Hood maintenance; DCKV to ensure adequate exhaust during heavy cooking |
| **Cancer risk** | IARC classifies emissions from high-temperature frying as "probably carcinogenic" (Group 2A) | Minimize direct exposure; use equipment that reduces aerosolization |
| **Eye irritation** | Acrolein and VOCs from overheated oils | Temperature control; proper oil management; hood capture |

### 8.3 Impact on Student Dining Environment

| Problem | Cause | Solution |
|---------|-------|----------|
| **Cooking odors in cafeteria** | Poor kitchen-to-cafeteria pressure relationship | Maintain kitchen at slight negative pressure; transfer air design |
| **Grease/smoke haze** | Undersized hoods; grease bypassing capture | Properly sized Type I hoods; baffle filter maintenance |
| **Humidity** | Steam from dishwashers, cooking; condensation | Type II hoods over steam equipment; HVAC dehumidification |
| **CO/NO2 exposure** | Gas appliances with inadequate ventilation; back-drafting | Proper makeup air; CO detectors; regular combustion testing |

### 8.4 Carbon Monoxide Detection Requirements

| Requirement | Standard | Detail |
|-------------|----------|--------|
| **CO detectors in kitchens** | IFC (International Fire Code) Section 915 | Required in all occupancies with fuel-burning appliances or attached garages |
| **CO alarm response level** | UL 2034 | Alarm at 70 ppm sustained or 400 ppm instantaneous |
| **CO detector placement** | IFC / NFPA 720 | Within 10 feet of each fuel-burning appliance; between 12" and 60" from ceiling |
| **OSHA CO limits** | 29 CFR 1910.1000 | PEL: 50 ppm TWA (8-hour); Ceiling: 200 ppm |
| **NIOSH CO limits** | NIOSH REL | 35 ppm TWA (10-hour); Ceiling: 200 ppm |

### 8.5 Filtration Options

| Filter Type | Mechanism | Grease Removal Efficiency | Application |
|-------------|-----------|--------------------------|-------------|
| **Baffle filters** | Airflow direction changes force grease droplets onto stainless steel baffles | 80--90% of grease particles > 10 microns | Standard in Type I hoods; UL 1046-listed required by NFPA 96 |
| **Mesh/screen filters** | Fine metal mesh captures grease | 70--80% | Residential and light commercial; **not permitted** in Type I hoods per NFPA 96 |
| **Cartridge/multi-stage filters** | Multiple filtration layers (baffle + coalescent + final) | 90--98% | High-efficiency applications; reduces duct grease loading |
| **Electrostatic precipitator (ESP)** | Ionizes grease particles, collects on charged plates | 90--95% | Pollution control for rooftop emissions; reduces visible smoke/odor |
| **UV-C (ultraviolet germicidal)** | Oxidizes grease molecules in exhaust stream | 70--90% (supplemental to baffle) | In-hood or in-duct; reduces grease accumulation in ductwork |
| **Water wash/mist** | Water spray captures grease and cools exhaust | 85--95% | Self-cleaning hoods; high-volume applications |
| **Activated carbon** | Adsorbs VOCs and odors | High for odors/VOCs; minimal for grease | Recirculating hoods; cafeteria odor control |

### 8.6 Pollution Control Units (PCUs) for Rooftop Emissions

Commercial kitchen exhaust can create neighborhood nuisance (odor, grease deposition, visible smoke). Pollution control units are sometimes required.

| Technology | What It Removes | When Required |
|------------|----------------|---------------|
| **ESP (electrostatic precipitator)** | Smoke, grease particles | High-volume cooking; urban locations; jurisdictions with air quality permits (e.g., TCEQ in Texas, BAAQMD in California) |
| **UV-C oxidation** | Grease, odors | Supplemental to ESP; assists with grease reduction in ductwork |
| **Activated carbon bank** | Odors, VOCs | Odor-sensitive locations (residential proximity) |
| **Water scrubber** | Particles, some odors | Very high-volume applications |
| **Cost range** | $5,000--$25,000+ per unit | Installation, plus $500--$2,000/year maintenance |

---

## 9. Common Ventilation Problems in K-12 Kitchens

This section synthesizes and expands on the ventilation problems cataloged in [07_COMMON_PROBLEMS.md](07_COMMON_PROBLEMS.md), Section 6.

### 9.1 Undersized Hoods for Current Equipment

| Indicator | Root Cause | Impact | Standard Violated |
|-----------|-----------|--------|-------------------|
| Hood does not extend over all cooking equipment | Equipment added/upgraded after original hood installation | Grease-laden vapors escape; grease on walls/ceiling; fire hazard | NFPA 96 5.2.1.1; IMC 507.2.4 (6" overhang) |
| Hood CFM too low for equipment duty | Original hood sized for warming; now covering ranges/fryers | Smoke/steam/heat not captured; worker discomfort; grease buildup | IMC 507.5 (minimum CFM by duty level) |
| Type I hood missing where required | Equipment changed from steam to grease-producing without hood upgrade | Direct fire code violation; no fire suppression | NFPA 96 5.1 |
| Hood filters missing, damaged, or wrong type | Deferred maintenance; mesh filters substituted for baffles | Grease bypasses to ductwork; reduced capture efficiency | NFPA 96 6.1 (UL 1046-listed baffles required) |

**Prevalence**: Extremely common. As documented in [07_COMMON_PROBLEMS.md](07_COMMON_PROBLEMS.md), the shift from heat-and-serve to scratch cooking requires **5--10 times more** hood CFM capacity.

### 9.2 Makeup Air Imbalance

| Problem | Physical Indicator | Impact |
|---------|-------------------|--------|
| **No makeup air system** | Doors slam shut; difficult to open exterior doors; cold drafts through gaps | Hood captures only 50--70% of vapors |
| **Negative pressure** | Paper held near door gaps gets sucked toward kitchen | Back-drafting risk for gas appliances (CO hazard) |
| **Untempered makeup air** | Blasts of cold air in winter; hot air in summer | Worker discomfort; HVAC system overload; energy waste |
| **Short-circuiting** | Supply air directly enters hood capture zone | Hood "captures" clean supply air instead of cooking effluent |

### 9.3 Excessive Heat at Cooking Line

| Contributing Factor | Mitigation |
|--------------------|------------|
| Insufficient exhaust rate (undersized hood) | Hood upgrade to match equipment duty |
| No spot cooling (dedicated cool air directed at workers) | Spot cooling diffusers above workstations (60--80 deg F, 100--200 FPM) |
| Equipment producing excessive radiant heat | Proximity hoods; insulated equipment; infrared-blocking barriers |
| Makeup air delivered above workers untempered | Tempered makeup air (cooled in summer, heated in winter) |
| Walk-in cooler compressor located in kitchen | Relocate condenser unit to exterior or mechanical room |

### 9.4 Grease-Laden Ducts (Fire Hazard)

| Risk Factor | Indicator | Consequence |
|-------------|-----------|-------------|
| Duct cleaning overdue | No current cleaning certificate posted | NFPA 96 violation; **leading cause of commercial kitchen fires** |
| Grease depth > 2 mm on duct surfaces | Professional inspection finding | Immediate cleaning required per NFPA 96 |
| Grease dripping from hood or visible on ceiling | Visible grease accumulation | Cleaning overdue; active fire hazard |
| Horizontal duct runs without proper slope | Grease pooling in low points | Accelerated buildup; difficult cleaning access |

**Fire statistics**: Kitchen fires account for approximately **61% of restaurant fires** (NFPA). Grease buildup in ducts and on cooking surfaces is the leading ignition factor.

### 9.5 Failed or Missing Fire Suppression

| Problem | Risk | Detection |
|---------|------|-----------|
| Fire suppression system not present in Type I hood | Maximum fire risk; building code violation | Visual: absence of nozzles under hood (MEDIUM CV feasibility) |
| System out of service (no inspection tag or expired tag) | System may not function in fire | Visual: inspection tag date (OCR -- HIGH CV feasibility) |
| Nozzles misaligned with current equipment layout | Equipment moved; nozzles no longer cover cooking surfaces | Visual: nozzle positioning vs. equipment (MEDIUM CV feasibility) |
| Manual pull station missing or inaccessible | Cannot activate system manually | Visual: pull station presence (HIGH CV feasibility) |

### 9.6 Energy Waste from Constant-Speed Fans

| Problem | Impact | Solution |
|---------|--------|----------|
| Exhaust fans run at 100% capacity regardless of cooking load | 30--50% wasted fan energy; excessive HVAC conditioning cost | DCKV retrofit with VFDs and sensors |
| Fans run during non-cooking hours | Complete waste of energy during prep, cleaning, idle | Timer controls; auto-start linked to equipment operation |
| Makeup air unit runs untempered at full volume | Energy waste and worker discomfort | MAU with tempering coils and VFD |

### 9.7 Poor Air Quality in Cafeteria

| Symptom | Cause | Solution |
|---------|-------|----------|
| Cooking odors in dining area | Kitchen at positive pressure relative to cafeteria; no transfer air design | Rebalance airflow; ensure kitchen slightly negative |
| Hazy/smoky appearance | Grease particles escaping kitchen through service openings | Hood upgrade; baffle filter maintenance; air curtain at pass-through |
| Excessive humidity | Dishwasher steam; uncaptured cooking moisture | Type II hood over dishwasher; HVAC dehumidification |
| Student complaints about air quality | Combination of odor, heat, humidity | Comprehensive air balance assessment |

---

## 10. Implications for the Space Scanner App

### 10.1 What Can Be Visually Assessed by Computer Vision

| Detectable Element | Detection Method | CV Feasibility | Relevant Standard |
|-------------------|------------------|----------------|-------------------|
| **Hood presence and type** (Type I vs. Type II) | Object detection (Grounding DINO/YOLO); presence of baffle filters indicates Type I | **HIGH** | NFPA 96; IMC 507 |
| **Hood overhang relative to equipment** | Spatial measurement via LiDAR; compare hood edge to equipment edge | **HIGH** | NFPA 96 5.2.1.1 (>= 6") |
| **Hood height above cooking surface** | LiDAR distance measurement | **HIGH** | IMC 507.2.6 (<= 48") |
| **Equipment identification for duty classification** | Object detection; equipment labels via OCR | **MEDIUM-HIGH** | IMC Table 507.2.1 |
| **Fire suppression nozzle presence under hoods** | Object detection (nozzle shape, spacing pattern) | **MEDIUM** | NFPA 96 Section 10 |
| **Manual pull station presence** | Object detection (distinctive red handle/plate) | **HIGH** | NFPA 96 10.5.3 |
| **K-class fire extinguisher presence** | Object detection (distinctive shape/label) | **HIGH** | NFPA 96 10.6 |
| **Grease filter type and condition** | Object detection (baffle vs. mesh); condition assessment (grease loading visible) | **MEDIUM** | NFPA 96 Section 6.1 |
| **Visible ductwork condition** | Surface condition analysis (grease, damage, rust) | **MEDIUM** | NFPA 96 Section 7 |
| **Exhaust fan presence on roof** | Object detection (if exterior/roof images available) | **MEDIUM** | IMC Chapter 5 |
| **Makeup air diffuser/register presence** | Object detection (ceiling/wall registers, MAU units) | **MEDIUM** | IMC 505.4; ASHRAE 154 |
| **Ventless hood identification** | Object detection (distinctive recirculating unit shape, no ductwork) | **MEDIUM** | UL 710B |
| **Visible grease on walls/ceiling** | Discoloration/sheen detection; anomaly detection | **MEDIUM** | NFPA 96 (cleaning overdue) |
| **Hood cleaning certificate** | OCR of posted certificate | **HIGH** | NFPA 96 Table 11.4 |
| **Fire suppression inspection tag** | OCR of inspection tag date | **HIGH** | NFPA 96 (semi-annual inspection) |
| **Equipment count and layout** | Object detection + spatial mapping | **HIGH** | Heat load estimation basis |
| **Cooking equipment without hood coverage** | Spatial analysis: equipment detected but no hood above | **HIGH** | NFPA 96 5.1 critical violation |

### 10.2 What CANNOT Be Assessed by Computer Vision

| Parameter | Why Not Detectable | Required Method |
|-----------|-------------------|-----------------|
| **Actual airflow rates (CFM)** | Air movement invisible to cameras | Anemometer; balometer at hood face |
| **Air temperature** | Thermal information not available from standard cameras | Thermometer; IR camera (not standard smartphone) |
| **Negative/positive pressure** | Pressure differential invisible | Manometer; smoke pencil test |
| **Duct interior condition** | Interior of enclosed ductwork hidden | Professional hood cleaning inspection |
| **Fire suppression system charge/inspection status** | Chemical agent level and system functionality hidden | Professional fire suppression inspection |
| **Carbon monoxide levels** | Gas invisible and odorless | CO detector/monitor |
| **Indoor air quality (PM, VOC, NO2)** | Pollutant concentrations invisible | IAQ monitor; sampling and laboratory analysis |
| **Makeup air balance** | Airflow ratios invisible | Air balance testing by mechanical contractor |
| **Fan speed/VFD operation** | Electrical parameters not visible | Electrical measurement; BMS data |
| **Sound level** | Acoustic measurement requires microphone | Sound level meter (dBA) |

### 10.3 Physical Measurement Methods (Field Inspection)

| Measurement | Instrument | What It Reveals |
|-------------|-----------|-----------------|
| **Hood face velocity** | Anemometer (vane or hot-wire) | Whether hood is exhausting at design CFM |
| **Hood capture test** | Smoke pencil or smoke bomb | Whether hood captures cooking effluent at all positions |
| **Air balance** | Balometer at supply/return/exhaust | Whether makeup air matches exhaust volume |
| **Pressure differential** | Manometer (digital or analog) | Kitchen pressure relative to cafeteria/corridor |
| **Temperature** | Thermometer or IR gun | Ambient temp at cooking line, prep area, cafeteria |
| **Humidity** | Hygrometer | Relative humidity (affects comfort and IAQ) |
| **Carbon monoxide** | CO monitor | Gas appliance combustion safety |
| **Grease depth in duct** | NFPA 96-compliant measurement tool | Compliance with 2 mm threshold |

### 10.4 Specific Thresholds the App Should Reference

| Parameter | Threshold | Standard | App Action |
|-----------|-----------|----------|------------|
| Hood overhang | >= 6" beyond equipment on all open sides | NFPA 96 5.2.1.1 | **Measure via LiDAR; flag if < 6"** |
| Hood height above cooking surface | <= 48" | IMC 507.2.6 | **Measure via LiDAR; flag if > 48"** |
| Duct clearance from combustibles | >= 18" | NFPA 96 7.3.2 | **Measure via LiDAR (if duct visible)** |
| Equipment duty classification | Light/Medium/Heavy/Extra-Heavy | IMC Table 507.2.1 | **Classify via equipment identification; cross-reference to required CFM** |
| Cooking equipment without hood | Zero tolerance (all grease-producing equipment must be under Type I) | NFPA 96 5.1 | **Critical alert if cooking equipment detected without hood above** |
| Grease filter type | Baffle required in Type I | NFPA 96 6.1 | **Flag mesh filters in Type I hoods** |
| Hood cleaning certificate | Must be current per NFPA 96 Table 11.4 schedule | NFPA 96 | **OCR of posted certificate; flag if expired** |
| Fire suppression nozzles | Must be present under every Type I hood | NFPA 96 10.1 | **Flag Type I hood without visible nozzles** |
| K-class extinguisher | Within 30 ft travel distance of cooking equipment | NFPA 96 10.6 | **Detect extinguisher presence; estimate distance** |
| Fire extinguisher inspection tag | Current (within 12 months) | NFPA 10 | **OCR of inspection tag** |
| Makeup air registers | Must be present when exhaust > 400 CFM | IMC 505.4 | **Flag absence of visible supply registers in kitchen** |
| Visible grease on walls/ceiling | Indicates overdue cleaning and/or undersized ventilation | NFPA 96; FDA Food Code 6-501.12 | **Flag discoloration/sheen patterns** |

### 10.5 Cross-Reference: CV Detection Palette (from 01_CV_CAPABILITIES.md)

| Ventilation Element | CV Feasibility | Notes |
|--------------------|----------------|-------|
| Hood systems | **HIGH** (object detection) | Distinctive shape, filters, nozzles |
| Fire suppression nozzles | **MEDIUM** (object detection) | Small components; may require close-up |
| Exhaust ductwork | **MEDIUM** (scene analysis) | Often exposed in older kitchens |
| Makeup air registers | **MEDIUM** (object detection) | Generic ceiling/wall registers; may confuse with HVAC supply |
| Grease buildup | **MEDIUM** (condition assessment) | Discoloration patterns; requires custom training |
| Equipment labels/model plates | **HIGH** (OCR) | For heat output/BTU estimation |
| Posted certificates/tags | **HIGH** (OCR) | Cleaning certificates, inspection tags |
| Airflow/temperature/pressure | **LOW** (cannot assess) | Requires physical instruments; generate checklist |

### 10.6 Recommended App Workflow for Ventilation Assessment

```
VENTILATION ASSESSMENT WORKFLOW
|
|-- STEP 1: Equipment Detection
|   |-- Identify all cooking equipment (object detection + OCR)
|   |-- Classify equipment by duty level (light/medium/heavy/extra-heavy)
|   |-- Estimate total heat load from identified equipment
|   |-- Flag: gas vs. electric (affects combustion product concerns)
|
|-- STEP 2: Hood System Assessment
|   |-- Detect hood presence above each cooking equipment item
|   |-- CRITICAL FLAG: Any cooking equipment without hood coverage
|   |-- Classify hood type (Type I vs. Type II vs. ventless)
|   |-- Measure hood overhang (LiDAR): flag if < 6" beyond equipment
|   |-- Measure hood height above cooking surface: flag if > 48"
|   |-- Detect grease filter type (baffle vs. mesh): flag mesh in Type I
|   |-- Detect fire suppression nozzle presence: flag absence in Type I
|   |-- Read hood cleaning certificate (OCR): flag if expired
|
|-- STEP 3: Fire Safety Check
|   |-- Detect K-class extinguisher presence and proximity
|   |-- Detect manual pull station presence
|   |-- Read fire suppression inspection tag (OCR)
|   |-- Assess visible duct condition (grease, damage)
|   |-- Check duct clearance from combustible materials (if visible)
|
|-- STEP 4: Makeup Air Assessment
|   |-- Detect supply air registers/diffusers in kitchen
|   |-- Flag absence of visible makeup air components
|   |-- Identify transfer air openings (pass-through, service windows)
|   |-- Note: recommend professional air balance test
|
|-- STEP 5: Thermal/IAQ Checklist Generation
|   |-- Generate physical inspection checklist items:
|       |-- Hood face velocity (anemometer)
|       |-- Hood capture test (smoke pencil)
|       |-- Air balance (balometer)
|       |-- Kitchen pressure differential (manometer)
|       |-- Ambient temperature at cooking line (thermometer)
|       |-- Carbon monoxide level (CO monitor)
|       |-- Duct interior inspection (professional cleaning company)
|
|-- STEP 6: Energy Efficiency Assessment
|   |-- Detect VFD/DCKV presence on exhaust system
|   |-- Estimate required exhaust CFM from equipment identification
|   |-- If > 5,000 CFM estimated: flag ASHRAE 90.1 DCKV requirement
|   |-- Note current fan type (constant-speed vs. variable): flag upgrade opportunity
|
|-- OUTPUT:
    |-- Ventilation compliance scorecard
    |-- Critical violations (unhooded equipment, missing fire suppression)
    |-- Code deficiency flags (overhang, height, filter type)
    |-- Energy efficiency recommendations (DCKV, heat recovery)
    |-- Physical inspection checklist
    |-- Estimated heat load from detected equipment
```

---

## Sources

### ASHRAE Standards

- [ASHRAE 62.1-2022: Ventilation and Acceptable Indoor Air Quality (ICC Safe)](https://codes.iccsafe.org/content/ASHRAE6212022P1)
- [ASHRAE Standards 62.1 & 62.2 (ASHRAE Bookstore)](https://www.ashrae.org/technical-resources/bookstore/standards-62-1-62-2)
- [ASHRAE 154-2016: Ventilation for Commercial Cooking Operations (GlobalSpec)](https://standards.globalspec.com/std/14584424/154)
- [ASHRAE 154-2016 (ICC Safe)](https://codes.iccsafe.org/content/ASHRAE1542016P1)
- [ASHRAE 55-2023: Thermal Environmental Conditions for Human Occupancy (ASHRAE)](https://www.ashrae.org/technical-resources/bookstore/standard-55-thermal-environmental-conditions-for-human-occupancy)
- [ASHRAE 55 -- Wikipedia](https://en.wikipedia.org/wiki/ASHRAE_55)
- [ASHRAE 55: Thermal Comfort Basics (SimScale)](https://www.simscale.com/blog/what-is-ashrae-55-thermal-comfort/)
- [ASHRAE 90.1 and Kitchen Ventilation (Streivor)](https://www.streivor.com/faq-items/ashrae-90-1/)
- [Compliance with ASHRAE 90.1, IECC, and NECB DCV (CaptiveAire)](https://www.captiveaire.com/Resources/Bulletins/TB20-1021%20Compliance%20with%20ASHRAE.pdf)
- [Calculating Airflow Rates, Cooling Loads in Commercial Kitchens (ASHRAE Journal)](https://www.ashrae.org/technical-resources/ashrae-journal/featured-articles/calculating-airflow-rates-cooling-loads-in-commercial-kitchens)
- [Revised Heat Gain Rates from Typical Commercial Cooking Appliances, RP-1362 (Free Library)](https://www.thefreelibrary.com/Revised+heat+gain+rates+from+typical+commercial+cooking+appliances...-a0217848196)
- [Thermal Comfort and Efficiency in Food Service (Illinois ASHRAE Chapter)](https://illinoisashrae.org/images/meeting/031219/Spring_Conference_2019/specialty_2_jason_greenberg___thermal_comfort_and_energy_in_food_service.pdf)

### International Mechanical Code (IMC)

- [IMC 2021 Chapter 5: Exhaust Systems (ICC Safe)](https://codes.iccsafe.org/content/IMC2021P1/chapter-5-exhaust-systems)
- [IMC 2021 Section 507.1: Commercial Kitchen Hoods (ICC Safe)](https://codes.iccsafe.org/s/IMC2021P1/chapter-5-exhaust-systems/IMC2021P1-Ch05-Sec507.1)
- [IMC 2021 Section 507.3: Type II Hoods (ICC Safe)](https://codes.iccsafe.org/s/IMC2021P1/chapter-5-exhaust-systems/IMC2021P1-Ch05-Sec507.3)
- [IMC 2021 Chapter 5: Exhaust Systems -- Connecticut (UpCodes)](https://up.codes/viewer/connecticut/imc-2021/chapter/5/exhaust-systems)
- [Commercial Kitchen Hoods (UpCodes)](https://up.codes/s/commercial-kitchen-hoods)

### NFPA 96

- [NFPA 96 Standard Development (NFPA.org)](https://www.nfpa.org/codes-and-standards/nfpa-96-standard-development/96)
- [NFPA 96 Standard for Ventilation Control and Fire Protection (Aerovent PDF)](https://www.aerovent.com/wp-content/uploads/sites/2/2021/12/NFPA-96-Standard-for-Ventilation-Control-and-Fire-Protection-of-Commercial-Cooking-Operations-FE-3400.pdf)
- [NFPA 96 Guide Part 1: Exhaust Systems and Grease Removal (Hood Filters)](https://blog.hoodfilters.com/2024/03/19/nfpa-guide-part-1-commercial-kitchen-exhaust-systems-and-grease-removal-essentials/)
- [NFPA 96 Overview (Koorsen)](https://blog.koorsen.com/overview-of-nfpa-96-standard-for-ventilation-control-and-fire-protection-of-commercial-cooking-operations)
- [NFPA 96 Standards Guide (Clean Hoods Express)](https://cleanhoodsexpress.com/nfpa-96-standards-a-guide-for-commercial-kitchens/)
- [NFPA 96 Standards Explained (Kitchen Guard)](https://kitchenguard.com/nfpa-96-codes/)
- [NFPA 96 Kitchen Hood Cleaning Inspection Intervals (Clean Hoods Express)](https://cleanhoodsexpress.com/understanding-nfpa-96-kitchen-hood-cleaning-inspection-intervals/)
- [NFPA 96 Kitchen Vent & Fire Safety Tips (MFS Trade School)](https://mfstradeschool.com/blogs/kitchen-exhaust-hood-cleaning/decoding-nfpa-96-the-ultimate-guide-for-kitchen-technicians)
- [NFPA 96 Commercial Kitchen Standard (US Made Supply)](https://usmadesupply.com/resources/building-codes-standards/fire-suppression-standards/nfpa-96)
- [NFPA 96: Standard for Ventilation Control (HoodFilters.com)](https://www.hoodfilters.com/nfpa/)

### UL Standards and Hood Listings

- [UL 710 and UL 710B Listings for Hoods (HoodMart)](https://www.hoodmart.com/blog/post/a-closer-look-at-ul-710-and-ul-710b-listings-for-hoods)
- [Commercial Cooking UL Guidance (UL Solutions PDF)](https://code-authorities.ul.com/wp-content/uploads/2014/04/CommercialCooking_AG1.pdf)
- [710B Hood Requirements (Building Code Forum)](https://www.thebuildingcodeforum.com/forum/threads/710b-hood-requirements.38039/)

### Hood Design and Sizing

- [Commercial Kitchen Hood Code Requirements (WebstaurantStore)](https://www.webstaurantstore.com/article/625/kitchen-hood-code-requirements.html)
- [Commercial Kitchen Hood Code Requirements (Alturas Contractors)](https://alturascontractors.com/commercial-kitchen-hood-code-requirements/)
- [Selecting and Sizing Exhaust Hoods -- CKV Design Guide 1 (Streivor)](https://www.streivor.com/wp-content/uploads/2020/11/CKV-Design-Guide-1-Selecting-and-Sizing-Exhaust-Hoods.pdf)
- [Hood Installation, Operation, and Maintenance Manual (HoodMart)](https://www.hoodmart.com/pub/media/pdf/EN-%20HOOD%20INSTALLATION%20OPERATION%20MAINTENANCE%20MANUAL.pdf)
- [Specifying a Kitchen Exhaust Hood (Kitchen Ventilation)](https://kitchenventilation.com/2020/03/24/specifying-a-kitchen-exhaust-hood/)
- [What Are the Rules for Commercial Kitchen Hoods? (Hood Hero)](https://hoodhero.com/what-are-the-rules-for-commercial-kitchen-hoods/)

### Makeup Air Systems

- [When Makeup Air Is Required for Commercial Kitchens (Accurex)](https://www.accurex.com/blog/white-papers/when-make-up-air-is-required-for-commercial-kitchens)
- [Makeup Air for Commercial Kitchens (SEFA/KitchenBiz)](https://www.sefa.com/kitchenbiz/post/make-up-air-for-commercial-kitchens)
- [Optimizing Makeup Air -- CKV Design Guide 3 (CA Energy Wise)](https://caenergywise.com/design-guides/CKV-Design-Guide-3_Optimizing_Makeup_Air.pdf)
- [Optimizing Makeup Air -- CKV Design Guide 2 (Streivor)](https://www.streivor.com/wp-content/uploads/2020/11/CKV-Design-Guide-2-Optimizing-Makeup-Air.pdf)
- [Integrating Kitchen Exhaust with Building HVAC (Streivor)](https://www.streivor.com/wp-content/uploads/2020/11/CKV-Design-Guide-3-Integrating-Exh-w-HVAC.pdf)
- [Fundamentals of Kitchen Ventilation (PDH Online)](https://www.pdhonline.com/courses/m228/m228content.pdf)
- [What Are Makeup Air Systems? (HoodMart)](https://www.hoodmart.com/blog/post/what-are-make-up-air-systems-and-why-does-your-commercial-kitchen-need-one)

### DCKV and Energy Efficiency

- [ENERGY STAR DCKV Technology Profile (PDF)](https://www.energystar.gov/sites/default/files/dckv_technology_profile.pdf)
- [DOE Guidance on Demand-Controlled Kitchen Ventilation (Better Buildings)](https://betterbuildingssolutioncenter.energy.gov/sites/default/files/attachments/Guidance-on-Demand-Controlled-Kitchen-Ventilation.pdf)
- [ENERGY STAR Demand Control Kitchen Ventilation Program](https://www.energystar.gov/partner-resources/products_partner_resources/brand-owner/eta-consumers/demand-control-kitchen)
- [Demand Control Ventilation for Commercial Kitchens (Kitchen Ventilation)](https://kitchenventilation.com/2019/08/15/demand-control-ventilation-commercial-kitchens/)
- [Demand Control Kitchen Technology (Gaylord Ventilation)](https://www.gaylordventilation.com/products/demand-control-kitchen-technology-dckv)
- [How DCKV Systems Pay for Themselves (Melink Corp)](https://blog.melinkcorp.com/blog/how-demand-control-kitchen-ventilation-systems-pay-for-themselves)
- [What Are DCKV Systems? (Melink Corp)](https://blog.melinkcorp.com/blog/what-are-demand-control-kitchen-ventilation-systems)
- [When Does DCKV Make Sense? (Method Engineering)](https://methodeg.com/blog/dckv)
- [DCKV Sensor Differences (Kitchen Ventilation)](https://kitchenventilation.com/2022/08/24/demand-controlled-kitchen-ventilation-sensor-differences/)
- [Commercial Kitchen Ventilation Design and Innovations (Dialectic Engineering)](https://www.dialecticeng.com/insights/2017/08/11/commercial-kitchen-ventilation-ckv-design-and-recent-innovations-and-developments-in-the-industry)
- [California Title 24 Kitchen Ventilation (CASE Report)](https://title24stakeholders.com/wp-content/uploads/2017/10/2013_CASE-Report_Kitchen-Ventilation.pdf)
- [Commercial Kitchen Energy (PNNL/DOE)](https://buildingenergyscore.energy.gov/resources/download?key=publications/Final_ASHRAE_PNNL_CommercialKitchen.pdf)
- [Energy Savings of CKV and AC Systems (ScienceDirect)](https://www.sciencedirect.com/science/article/abs/pii/S037877882400433X)

### OSHA/NIOSH Heat Exposure

- [OSHA Heat Exposure Standards](https://www.osha.gov/heat-exposure/standards)
- [OSHA Heat Stress Guide](https://www.osha.gov/emergency-preparedness/guides/heat-stress)
- [OSHA eTool: Hospitals -- Food Services -- Heat Stress](https://www.osha.gov/etools/hospitals/food-services/heat-stress)
- [OSHA Heat Hazard Recognition](https://www.osha.gov/heat-exposure/hazards)
- [OSHA Heat Initiative Inspection Guidance](https://www.osha.gov/laws-regs/standardinterpretations/2021-09-01)
- [OSHA Technical Manual Section III Chapter 4: Heat Stress](https://www.osha.gov/otm/section-3-health-hazards/chapter-4)
- [NIOSH Criteria: Occupational Exposure to Heat and Hot Environments (CDC)](https://www.cdc.gov/niosh/docs/2016-106/default.html)
- [NIOSH Criteria Document (Regulations.gov PDF)](https://downloads.regulations.gov/CDC-2013-0025-0005/content.pdf)
- [OSHA-NIOSH Heat Illness Prevention Infosheet (PDF)](https://www.osha.gov/sites/default/files/publications/osha-niosh-heat-illness-infosheet.pdf)
- [NIOSH Heat Safety Tool App (CDC)](https://www.cdc.gov/niosh/heat-stress/communication-resources/app.html)

### Indoor Air Quality and Cooking Emissions

- [Cooking and Indoor Air Pollution (American Lung Association)](https://www.lung.org/blog/cooking-air-pollution)
- [Impact of Cooking Methods on IAQ: PM and VOC Emissions (Indoor Air/Wiley)](https://onlinelibrary.wiley.com/doi/10.1155/2024/6355613)
- [Indoor Air Pollution from Cooking (California Air Resources Board)](https://ww2.arb.ca.gov/resources/documents/indoor-air-pollution-cooking)
- [Gas Stove Emissions and Direct Health Effects (PMC)](https://pmc.ncbi.nlm.nih.gov/articles/PMC10901287/)
- [Cooking Impacts on Indoor Air Quality, Health, and Climate (WA DOH)](https://doh.wa.gov/sites/default/files/2024-04/334-538.pdf)
- [Restaurant Kitchen Air Quality Guide (Envigilance)](https://envigilance.com/air-quality/restaurant-kitchen-air-quality/)
- [Cooking Up Indoor Air Pollution (Environmental Health Perspectives)](https://ehp.niehs.nih.gov/122-a27)

### Commercial Kitchen Thermal Environment

- [Controlling Temperature in Commercial Kitchens (Melink Corp)](https://blog.melinkcorp.com/blog/how-control-the-temperature-commercial-kitchens)
- [Heat Sources in Commercial Kitchens (Halton/Kitchen Ventilation)](https://kitchenventilation.com/2019/05/10/types-of-heat-sources-and-effect-on-kitchen-environment/)
- [Thermal Conditions in Commercial Kitchens (AIVC)](https://www.aivc.org/sites/default/files/airbase_12100.pdf)
- [Overcoming Uncomfortable Kitchen Environments (Accurex)](https://www.accurex.com/blog/articles/overcoming-uncomfortable-kitchen-environments)
- [How to Cool a Commercial Kitchen (Premier Industries)](https://piec.com/how-to-cool-a-commercial-kitchen/)

### Equipment BTU Ratings and Heat Output

- [Equipment BTU Ratings Explained (WebstaurantStore)](https://www.webstaurantstore.com/article/1003/btu-ratings.html)
- [BTU Guide (Culinary Depot)](https://www.culinarydepotinc.com/btu-guide/)
- [Natural Gas Food Service Equipment Efficiency (NaturalGasEfficiency.org)](https://naturalgasefficiency.org/for-commercial-facilities/products/food-service-equipment/)

### Filtration and Pollution Control

- [Grease Filters for Commercial Kitchen Hoods (Streivor)](https://www.streivor.com/ventilation/grease-filters/)
- [Pollution Control Unit by CaptiveAire](https://www.captiveaire.com/catalogcontent/pollutioncontrol/pcu/index.asp)
- [Electrostatic Precipitator (Advanced Hood Systems)](https://advancedhoodsystems.com/products/electrostatic-precipitator/)
- [Commercial Kitchen ESP Systems (Purified Air)](https://www.purifiedair.com/solutions/esp-range/)

### California-Specific Requirements

- [California Energy Code -- Commercial Kitchens (Energy Code Ace)](https://energycodeace.com/site/custom/public/reference-ace-2019/Documents/103commercialkitchens.htm)
- [California Ventilation Exemption Guidelines (Alameda County DEH)](https://deh.acgov.org/operations-assets/docs/plancheck/Ventilation_Exemption_Guidelines.pdf)

### School Facility Design

- [Kitchen Design, Ventilation and Cx (ASHRAE Illinois Chapter)](https://illinoisashrae.org/images/meeting/060920/2019_20_Documents/june_2020_kitchen_vent_presentation.pdf)
- [Minnesota Ventilation Guidelines for Commercial Kitchens](https://cms3.revize.com/revize/kandiyohihealth/Document%20Center/Environmental%20Health/Minnesota_Ventilation_Guidelines_(PDF)_2014_%2008_26.pdf)
- [Philadelphia FAQ: Commercial Kitchen Exhaust and Energy Code](https://www.phila.gov/media/20250519125649/PB_001_FAQ-Commercial-Kitchen-Exhaust-Energy-Code-Mechanical-Code-2021-code.pdf)
