# Food Safety by Design for K-12 School Kitchens

*Comprehensive reference for computer-vision-based kitchen analysis -- how physical design enables or hinders food safety, and what the Space Scanner app can detect*

---

## Purpose

This document maps food safety principles to the physical design of K-12 school kitchens. For each food safety requirement, it identifies the physical space or design feature involved, the specific numeric thresholds the app should check against, what can be **visually assessed** by the app (leveraging the detection palette from [01_CV_CAPABILITIES.md](./01_CV_CAPABILITIES.md)), and what requires **operational assessment** or **document review**. This document builds on the regulatory framework established in [02_REGULATORY_CODE_LANDSCAPE.md](./02_REGULATORY_CODE_LANDSCAPE.md), the ergonomic design principles in [03_ERGONOMICS_WORKER_SAFETY.md](./03_ERGONOMICS_WORKER_SAFETY.md), and the workflow/layout analysis in [04_KITCHEN_LAYOUT_WORKFLOW.md](./04_KITCHEN_LAYOUT_WORKFLOW.md).

---

## 1. HACCP Critical Control Points Mapped to Physical Spaces

### 1.1 The Seven HACCP Principles

The Hazard Analysis and Critical Control Point (HACCP) system is mandated for all schools participating in the National School Lunch Program (NSLP) and School Breakfast Program (SBP) per **7 CFR 210.13(c)**. The seven principles are:

| Principle | Description | Design Relevance |
|-----------|-------------|-----------------|
| **1. Hazard Analysis** | Identify biological, chemical, and physical hazards at each step | Layout must support distinct workflow stages (see [04_KITCHEN_LAYOUT_WORKFLOW.md](./04_KITCHEN_LAYOUT_WORKFLOW.md) Section 2) |
| **2. Identify CCPs** | Determine points where control is essential to prevent, eliminate, or reduce hazards | Each CCP maps to a specific physical location and equipment type |
| **3. Establish Critical Limits** | Set measurable boundaries (temperatures, times) at each CCP | Equipment must enable monitoring at each critical limit |
| **4. Establish Monitoring Procedures** | Define what, how, when, and who for monitoring each CCP | Monitoring equipment (thermometers, timers) must be placed at each CCP location |
| **5. Establish Corrective Actions** | Define steps when monitoring indicates a CCP is out of control | Design must support corrective actions (e.g., blast chiller access for failed cooling) |
| **6. Establish Verification Procedures** | Confirm the HACCP system works as intended | Record-keeping stations, calibration equipment, and log storage must be accessible |
| **7. Establish Record-Keeping** | Maintain documentation of the HACCP system | Designated clipboard/tablet stations near each CCP for logging |

Sources: [FDA HACCP Principles & Application Guidelines](https://www.fda.gov/food/hazard-analysis-critical-control-point-haccp/haccp-principles-application-guidelines), [USDA FNS HACCP Guidance for Schools](https://fns-prod.azureedge.us/sites/default/files/Food_Safety_HACCPGuidance.pdf)

### 1.2 The Three Process Approach for School Meals

The USDA identifies three food process categories that drive kitchen design and CCP identification. Each process has different critical control points and therefore different physical space requirements.

| Process Category | Definition | Examples | Critical Control Points | Kitchen Design Requirements |
|-----------------|------------|----------|------------------------|-----------------------------|
| **No Cook** | Food items that are not cooked but are served cold or at room temperature | Salads, fresh fruit, deli sandwiches, cold cereal, yogurt | Cold holding at 41 deg F (5 deg C) or below | Adequate refrigerated prep space; cold holding wells at serving; cold prep area separate from hot prep |
| **Same Day Service** | Food items cooked and served the same day; no cooling/reheating | Grilled items, hamburgers, baked goods, pizza | Cooking to required minimum internal temperatures; hot holding at 135 deg F (57 deg C) or above | Cooking equipment capacity to meet peak demand; hot holding equipment between cooking line and serving; thermometer at cooking and holding stations |
| **Complex Food Preparation** | Food items cooked, cooled, and reheated (multi-day preparation) | Soups, casseroles, large roasts made ahead, chili, spaghetti sauce | Cooking, cooling (two-stage), reheating to 165 deg F (74 deg C) within 2 hours, hot holding | Blast chillers or adequate cooling equipment; separate cooling area near cooking line; reheating equipment; staging areas for multi-step processes |

**Key design insight**: Kitchens that perform complex food preparation require significantly more equipment and space than those limited to same-day or no-cook processes. The presence of a blast chiller is a strong indicator of complex food preparation capability.

Sources: [USDA FNS -- Developing a School Food Safety Program Based on the Process Approach to HACCP](https://www.fns.usda.gov/fs/developing-school-food-safety-program-based-process-approach-haccp), [USDA HACCP Guidance for Schools (PDF)](https://fns-prod.azureedge.us/sites/default/files/Food_Safety_HACCPGuidance.pdf)

### 1.3 CCP-to-Physical Space Mapping

Each CCP occurs at a specific physical location in the kitchen. Design choices at each location can enable or hinder food safety compliance.

| CCP | Physical Location | Critical Limits | Equipment Required | Design Enables Safety | Design Hinders Safety |
|-----|------------------|-----------------|--------------------|-----------------------|-----------------------|
| **Receiving** | Loading dock or exterior door with staging area | Cold items: <=41 deg F (5 deg C); Frozen: <=0 deg F (-18 deg C) | Receiving thermometer, scale, receiving table, hand truck | Covered receiving area; staging table adjacent to walk-in; thermometer mounted at receiving | Receiving directly into kitchen (no staging); no thermometer at dock; long distance to cooler |
| **Cold Storage** | Walk-in cooler, walk-in freezer, reach-in refrigerators | Cooler: 36--41 deg F (2--5 deg C); Freezer: 0 deg F (-18 deg C) or below | Thermometers in each unit (accurate to +/-2 deg F per FDA 4-204.112); alarm system | Thermometers visible without opening doors; continuous monitoring; adequate capacity for peak inventory | Undersized cold storage; no visible thermometer; units far from prep area (increases danger-zone transit) |
| **Thawing** | Refrigerator, cold running water station, or microwave | Under refrigeration (<=41 deg F); under cold running water (<=70 deg F / 21 deg C); as part of cooking | Dedicated thawing space in cooler (lowest shelf); prep sink with cold running water | Designated thawing area on lowest refrigerator shelf; prep sink available; space near cooking equipment | No designated thawing area; thawing at room temperature (violation); insufficient refrigerator space |
| **Prep (Cold)** | Dedicated cold prep area | Time out of refrigeration: minimize (2-hour/4-hour rule); raw/RTE separation | Prep tables, cutting boards (color-coded), prep sink, hand sink within 25 ft | Prep tables adjacent to refrigeration; separate raw and RTE prep areas; hand sink within reach; color-coded equipment | Prep tables far from refrigerator; shared surfaces for raw and RTE; no hand sink nearby |
| **Prep (Hot)** | Area adjacent to cooking line | Time/temperature control during mixing, portioning | Prep tables, mixers, food processors | Adjacent to cooking line; clear flow path from prep to cooking; adequate counter landing space | Separated from cooking line; requires carrying hot items across kitchen |
| **Cooking** | Cooking line under ventilation hood | See Section 1.4 for minimum internal temperatures by food type | Cooking equipment, cooking thermometers, timer | Thermometers at each cooking station; timer visible; hood system adequate; adequate cooking capacity for peak demand | Insufficient cooking equipment for volume; no thermometer at cooking line; poor hood ventilation |
| **Hot Holding** | Between cooking line and serving | >=135 deg F (57 deg C) | Steam tables, hot holding cabinets, heated wells | Hot holding equipment directly between cooking and serving; thermometer in each unit; capacity matches serving volume | Hot holding far from cooking or serving line; insufficient capacity; no thermometer |
| **Cold Holding** | Serving line cold wells; refrigerated prep tables | <=41 deg F (5 deg C) | Cold wells, refrigerated prep tables, ice baths | Cold wells integrated into serving line; thermometer in each unit; ice machine nearby for backup | No cold wells at serving; relies on ice baths that melt during service; cold items at room temperature |
| **Serving** | Serving line or stations accessible to students | Hot: >=135 deg F (57 deg C); Cold: <=41 deg F (5 deg C); Time limit: 4 hours maximum | Serving counters, sneeze guards, thermometers, timers | Serving line with integrated hot/cold wells; sneeze guards; visible thermometers; timer system | Open serving without temperature control; no sneeze guards; no temperature monitoring |
| **Cooling** | Cooling area near cooking line | Stage 1: 135 deg F to 70 deg F (57 deg C to 21 deg C) in <=2 hours; Stage 2: 70 deg F to 41 deg F (21 deg C to 5 deg C) in <=4 additional hours (6 hours total) | Blast chiller, shallow pans, ice baths, cooling wands, walk-in cooler space | Blast chiller adjacent to cooking line; shallow pan storage nearby; adequate walk-in space for cooling items; ice machine access | No blast chiller; walk-in cooler at capacity; cooling must occur at room temperature; insufficient shallow pans |
| **Reheating** | Cooking or holding area | >=165 deg F (74 deg C) within 2 hours | Ovens, steamers, combi ovens, cooking thermometer | Reheating equipment with adequate capacity; thermometer for verification; holding equipment immediately available | Reheating in microwave only (uneven heating); insufficient equipment capacity; no thermometer |

### 1.4 Minimum Internal Cooking Temperatures (FDA Food Code 2022, Section 3-401.11)

| Food Type | Minimum Internal Temperature | Hold Time | Notes |
|-----------|------------------------------|-----------|-------|
| **Poultry** (whole or ground chicken, turkey, duck) | **165 deg F (74 deg C)** | 15 seconds | Highest temperature requirement |
| **Stuffing, stuffed meats, stuffed pasta** | **165 deg F (74 deg C)** | 15 seconds | Same as poultry due to mixed ingredients |
| **Reheated leftovers** (for hot holding) | **165 deg F (74 deg C)** | Within 2 hours | Must reach 165 deg F within 2 hours of start of reheating |
| **Ground meat** (beef, pork, lamb) | **155 deg F (68 deg C)** | 17 seconds | Includes mechanically tenderized meats |
| **Eggs** (hot-held for service) | **155 deg F (68 deg C)** | 17 seconds | Higher than immediate-service eggs |
| **Injected/mechanically tenderized meats** | **155 deg F (68 deg C)** | 17 seconds | Treated same as ground meat |
| **Pork, beef, veal, lamb** (whole cuts -- steaks, roasts, chops) | **145 deg F (63 deg C)** | 15 seconds | 4-minute standing time alternative |
| **Fish and shellfish** | **145 deg F (63 deg C)** | 15 seconds | Includes all seafood |
| **Eggs** (served immediately) | **145 deg F (63 deg C)** | 15 seconds | Lower than hot-held eggs |
| **Commercially processed RTE food** (hot holding) | **135 deg F (57 deg C)** | N/A | Already cooked; just needs reheating for hot holding |
| **Fruits, vegetables, grains, legumes** (hot holding) | **135 deg F (57 deg C)** | N/A | No pathogen kill needed; temperature for quality |

Sources: [FDA Food Code 2022 Section 3-401.11](https://www.fda.gov/media/164194/download), [USDA FSIS Safe Minimum Internal Temperature Chart](https://www.fsis.usda.gov/food-safety/safe-food-handling-and-preparation/food-safety-basics/safe-temperature-chart)

### 1.5 Two-Stage Cooling Requirement

The cooling process is the highest-risk CCP in school kitchens because food spends the longest time in the temperature danger zone (41--135 deg F / 5--57 deg C). Research shows that the only method consistently meeting the FDA cooling standard in commercial settings is the blast chiller.

| Stage | Temperature Range | Maximum Time | Rationale |
|-------|-------------------|-------------|-----------|
| **Stage 1** | 135 deg F to 70 deg F (57 deg C to 21 deg C) | **2 hours** | Bacteria double every 20 minutes in this range |
| **Stage 2** | 70 deg F to 41 deg F (21 deg C to 5 deg C) | **4 additional hours** (6 hours total from start) | Slower growth but still in danger zone |

**Approved cooling methods** (FDA Food Code 3-501.14):
1. Shallow pans (food depth no more than 2--4 inches)
2. Blast chiller (forced cold air -- most effective method)
3. Ice-water bath (surround container with ice water, stir frequently)
4. Cooling wands / ice paddles
5. Adding ice as an ingredient
6. Combination methods

**Critical design implication**: A blast chiller should be located **adjacent to the cooking line** (within 5--10 feet) so hot food can be transferred immediately for cooling. Walk-in cooler capacity must accommodate cooling items in shallow pans in addition to normal inventory.

Sources: [FDA Food Code 2022 Section 3-501.14](https://www.fda.gov/media/164194/download), [FDA Cooling of Cooked TCS Food Guidance](https://www.fda.gov/media/181882/download), [Alto-Shaam -- Blast Chillers and Food Safety](https://www.alto-shaam.com/en/about-us/news/the-importance-of-blast-chillers-for-food-safety)

### 1.6 Monitoring Equipment Placement

| Location | Monitoring Equipment | Placement Standard | Source |
|----------|---------------------|--------------------|--------|
| **Each walk-in cooler/freezer** | Thermometer (visible without opening door -- external display or window-mounted) | Mounted where easily readable; accurate to +/-2 deg F (+/-1 deg C) | FDA Food Code 4-204.112 |
| **Each reach-in refrigerator** | Internal thermometer | Placed in warmest part of unit (near door) | FDA Food Code 4-204.112 |
| **Cooking stations** | Probe thermometer (calibrated) | Stored near cooking line; accessible without leaving station | FDA Food Code 4-302.12 |
| **Hot holding units** | Thermometer in each unit | Built into steam table/holding cabinet; visible from serving position | FDA Food Code 4-204.112 |
| **Cold holding wells** | Thermometer in each well | Integrated or probe-type | FDA Food Code 4-204.112 |
| **Receiving area** | Receiving thermometer (calibrated probe) | Designated storage location at receiving desk/table | USDA HACCP Guidance |
| **Blast chiller** | Built-in temperature display and timer | Visible from operating position | Manufacturer standard |
| **HACCP log station** | Clipboard, temperature log forms, or tablet/computer | Near primary CCP locations; dry, accessible area; at each major monitoring point | USDA HACCP Guidance; 7 CFR 210.13(c) |

### 1.7 Implications for the App

| Assessment Type | What to Check | Threshold / Target |
|----------------|---------------|-------------------|
| **Visually assessed** (object detection) | Thermometer presence on/near each refrigerator, freezer, hot holding unit, and cooking station | At least one thermometer per cold storage unit and per hot holding unit |
| **Visually assessed** (spatial analysis) | Blast chiller presence and proximity to cooking line | Within 10 ft of cooking line; flag absence if kitchen performs complex food prep |
| **Visually assessed** (LiDAR) | Distance from cold storage to prep area | <=15 ft recommended (see [04_KITCHEN_LAYOUT_WORKFLOW.md](./04_KITCHEN_LAYOUT_WORKFLOW.md) Section 2.3) |
| **Visually assessed** (object detection) | HACCP log station or record-keeping area | Clipboard, forms, or tablet visible near cooking/holding areas |
| **Visually assessed** (LiDAR) | Hot holding equipment between cooking and serving | Hot holding within 5 ft of cooking line and within 10 ft of serving |
| **Operational assessment** | Actual food temperatures, calibration records, staff temperature-taking practices | Requires physical inspection |
| **Document review** | Written HACCP plan, temperature logs, corrective action records | 7 CFR 210.13(c) requires written food safety program |
| **CV detection palette** | Object detection (thermometers -- MEDIUM confidence); spatial analysis (equipment proximity -- HIGH feasibility); OCR for temperature logs (MEDIUM feasibility) | See [01_CV_CAPABILITIES.md](./01_CV_CAPABILITIES.md) Sections 2, 4 |

---

## 2. Cross-Contamination Prevention Through Layout

Cross-contamination is the transfer of harmful microorganisms (primarily bacteria) from one food, surface, or person to another. It is the leading preventable cause of foodborne illness in foodservice settings. Kitchen layout is the first line of defense.

### 2.1 Physical Separation Strategies

The fundamental principle is **forward flow**: raw food moves toward cooking, cooked food moves toward serving, and these paths never intersect. This principle is detailed in [04_KITCHEN_LAYOUT_WORKFLOW.md](./04_KITCHEN_LAYOUT_WORKFLOW.md) Section 4.

| Separation Type | Implementation | Effectiveness | Cost |
|----------------|----------------|--------------|------|
| **Separate rooms** | Physical walls between raw prep and RTE prep | Highest -- complete physical barrier | High (construction cost) |
| **Separate zones with distance** | Minimum 4 ft (1.2 m) between raw meat prep and RTE prep if in the same room | High -- if combined with dedicated equipment | Moderate |
| **Separate equipment** | Dedicated cutting boards, knives, containers, and prep surfaces for raw vs. RTE | Moderate-High -- depends on staff compliance | Low |
| **Temporal separation** | Prep RTE foods first, then raw foods; clean and sanitize between | Moderate -- depends on thorough cleaning between uses | Lowest |
| **Workflow direction** | One-directional flow from raw to cooked areas; no backtracking | High -- systemic prevention | Built into layout design |

### 2.2 Raw vs. Ready-to-Eat (RTE) Separation

| Requirement | Standard | Design Feature |
|-------------|---------|----------------|
| **Separate prep areas** | Dedicated surfaces, cutting boards, and utensils for raw meat/poultry vs. RTE foods | Minimum two distinct prep zones; physical distance or barrier between them |
| **Separate prep sinks** | Raw protein prep sink separate from produce/RTE prep sink | At least two prep sinks in separate areas; hand sinks at both |
| **Dedicated equipment** | Equipment used for raw protein not shared with RTE items | Separate storage for raw-designated and RTE-designated equipment |
| **Directional flow** | Raw food moves toward cooking; cooked/RTE moves toward serving; paths do not intersect | Linear or zone-based layout with no crossing paths (see [04_KITCHEN_LAYOUT_WORKFLOW.md](./04_KITCHEN_LAYOUT_WORKFLOW.md) Section 2) |
| **Vertical separation in storage** | Raw meat/poultry stored **below** RTE foods in refrigerators to prevent drip contamination | Shelving order (top to bottom): RTE, seafood, whole cuts, ground meat, poultry |

**Refrigerator storage order** (FDA Food Code, top to bottom by minimum cooking temperature):
1. Ready-to-eat food (top shelf)
2. Seafood -- 145 deg F (63 deg C)
3. Whole cuts of beef, pork, lamb -- 145 deg F (63 deg C)
4. Ground meat, ground fish -- 155 deg F (68 deg C)
5. Whole and ground poultry -- 165 deg F (74 deg C) (bottom shelf)

### 2.3 Color-Coded Equipment Systems

The color-coded cutting board system is a HACCP-aligned visual control that reduces cross-contamination risk. While not mandated by the FDA Food Code, it is an industry best practice recognized by food safety organizations worldwide.

| Color | Designated Use | Rationale |
|-------|---------------|-----------|
| **Red** | Raw red meat (beef, pork, lamb) | Highest pathogen risk from raw meat |
| **Yellow** | Raw poultry (chicken, turkey, duck) | Salmonella risk; must not contact other foods |
| **Blue** | Raw seafood (fish, shellfish) | Separate allergen and pathogen profile |
| **Green** | Fruits and vegetables | Prevent contact with raw animal proteins |
| **White** | Dairy, bread, ready-to-eat items | Cleanest category; no raw protein contact |
| **Brown** | Cooked meats | Prevent recontamination of cooked products |
| **Purple** | Allergen-free preparation | Prevents allergen cross-contact (see Section 3) |

**Effectiveness data**: Studies show that color-coded systems reduce cross-contamination incidents by providing an immediate visual cue that reinforces training. The system is most effective when combined with physical separation (dedicated storage racks for each color) and posted reference charts.

Sources: [FoodDocs -- Chopping Board Colors Guide](https://www.fooddocs.com/post/chopping-board-colours), [KaTom -- Color-Coded Cutting Board Guide](https://www.katom.com/learning-center/color-coded-cutting-board-guide.html), [Vollrath -- Color-Coded Cutting Boards](https://www.vollrathfoodservice.com/products/smallwares/kitchen-essentials/cutting-boards/color-coded-cutting-boards)

### 2.4 Barrier Design Options

| Barrier Type | Description | When Required | CV Detectability |
|-------------|-------------|---------------|------------------|
| **Physical wall** | Floor-to-ceiling partition between raw and RTE prep | Best practice for high-volume scratch kitchens; required by some jurisdictions | HIGH -- wall detection via LiDAR/segmentation |
| **Half wall / partition** | Waist-height barrier (42--48 inches) between zones | Good compromise where full walls are impractical | HIGH -- detectable via LiDAR |
| **Distance separation** | Minimum 4 ft (1.2 m) between raw and RTE prep surfaces | Minimum standard when physical barriers are absent | HIGH -- measurable via LiDAR |
| **Separate rooms** | Distinct rooms with doors for raw meat prep | Required in some large-production facilities; ideal for central kitchens | HIGH -- room detection via LiDAR scan |
| **Equipment-based barrier** | Equipment placement (shelving, equipment) creates visual and physical separation between zones | Functional in smaller kitchens | MEDIUM -- detect equipment acting as divider |
| **Serving line barrier** | Counter, half-wall, or serving equipment between kitchen and dining area | Required by most health departments | HIGH -- detect continuous barrier |
| **Sneeze guards** | Transparent shields above food at serving lines | Required at self-service and buffet-style serving | HIGH -- detect glass/clear barrier above serving counters |

### 2.5 Handwashing as a Physical Barrier

Handwashing stations serve as **process control points** within the kitchen layout. Their placement creates mandatory "cleanliness checkpoints" that workers pass through when transitioning between zones. This concept is detailed in Section 4 below.

### 2.6 Implications for the App

| Assessment Type | What to Check | Threshold / Target |
|----------------|---------------|-------------------|
| **Visually assessed** (LiDAR + object detection) | Separate raw and RTE prep areas exist; measure distance between them | Minimum 4 ft (1.2 m) separation if in same room |
| **Visually assessed** (object detection) | Separate prep sinks for raw protein vs. produce/RTE | At least 2 distinct prep sinks in different areas |
| **Visually assessed** (object detection) | Color-coded cutting boards present | Detect colored boards; flag if only white/single-color boards visible |
| **Visually assessed** (LiDAR) | Physical barriers between raw and RTE prep | Detect walls, partitions, or distance >= 4 ft |
| **Visually assessed** (object detection) | Sneeze guards at serving lines | Flag absence at any serving station |
| **Visually assessed** (spatial analysis) | Workflow direction compliance -- no crossing of raw and cooked paths | Detect equipment positions; verify linear flow (see [04_KITCHEN_LAYOUT_WORKFLOW.md](./04_KITCHEN_LAYOUT_WORKFLOW.md) Section 2) |
| **Operational assessment** | Actual staff practices (using correct boards, handwashing between tasks) | Requires observation |
| **CV detection palette** | Object detection for cutting boards (MEDIUM confidence -- color classification); LiDAR for distances and barriers (HIGH feasibility); sneeze guard detection (HIGH feasibility) | See [01_CV_CAPABILITIES.md](./01_CV_CAPABILITIES.md) Sections 1--2 |

---

## 3. Allergen Cross-Contact Prevention

### 3.1 The Big 9 Allergens

The **Food Allergy Safety, Treatment, Education, and Research (FASTER) Act** (signed April 23, 2021; effective January 1, 2023) designated sesame as the ninth major food allergen, expanding the previous "Big 8" established by FALCPA (2004).

| Allergen | Prevalence (US Estimates) | Common School Menu Sources | Severity Concern |
|----------|--------------------------|---------------------------|-----------------|
| **Milk** | 1.9% of children | Cheese, butter, cream sauces, baked goods, pizza | Can be severe; common in K-12 |
| **Eggs** | 0.9% of children | Baked goods, pasta, breaded items, mayonnaise | Often outgrown; still common in K-12 |
| **Fish** | 0.2% of children | Fish sticks, tuna salad, fish patties | Can be severe; airborne reactions possible |
| **Crustacean shellfish** | 0.1% of children | Shrimp (less common in school menus) | Can be severe |
| **Tree nuts** | 1.2% of children | Baked goods, trail mix, Asian-style dishes | Highly severe; trace amounts can trigger |
| **Peanuts** | 2.2% of children | PB&J, baked goods, Asian sauces, snack bars | Most common cause of fatal food allergy in children |
| **Wheat** | 0.4% of children | Bread, pasta, baked goods, breaded items, gravies | Common in nearly all school menus |
| **Soy** | 0.4% of children | Soy milk, soy sauce, processed foods, vegetable oil | Ubiquitous in processed foods |
| **Sesame** | 0.2% of children | Hamburger buns, hummus, Asian dishes, breadsticks | Newest addition; increasingly common |

**Scale of the issue**: Approximately 5.6 million children in the US have food allergies (roughly 1 in 13 children, or about 2 per classroom). Schools must manage these allergies across all food preparation and service areas.

Sources: [USDA FSIS -- Food Allergies: The Big 9](https://www.fsis.usda.gov/food-safety/safe-food-handling-and-preparation/food-safety-basics/food-allergies-big-9), [FDA -- Food Allergies](https://www.fda.gov/food/nutrition-food-labeling-and-critical-foods/food-allergies), [School Nutrition Association -- Major Allergens: The Big Nine](https://schoolnutrition.org/resource/major-allergens-the-big-nine/)

### 3.2 Dedicated Allergen-Free Prep Zones

| Design Feature | Requirement | Rationale |
|---------------|-------------|-----------|
| **Dedicated prep surface** | Separate countertop or portable prep surface exclusively for allergen-free meal preparation | Eliminates surface-to-food cross-contact |
| **Dedicated equipment** | Separate cutting boards (purple is industry standard for allergen-free), utensils, mixing bowls, baking sheets | Prevents equipment-to-food cross-contact |
| **Separate storage** | Allergen-free ingredients stored in dedicated, labeled section of dry storage and refrigeration | Prevents ingredient-to-ingredient cross-contact |
| **Physical distance** | Allergen-free prep zone located away from areas where major allergens are used (particularly peanuts, tree nuts, wheat) | Minimizes airborne allergen exposure and splash/splatter risk |
| **Dedicated hand sink** | Hand sink at or near allergen-free zone | Handwashing between allergen and allergen-free prep is critical |
| **Signage** | Clear labeling identifying the zone as allergen-free; posted allergen protocols | Visual cue for staff awareness |
| **Cleaning protocol** | Zone must be cleaned and sanitized with soap and water (not just sanitizer) before allergen-free prep | Allergen proteins are not neutralized by sanitizer; require surfactant (soap) to remove |

**Key distinction**: Allergen cross-contact is different from microbial cross-contamination. Cooking does **not** destroy allergen proteins. The only prevention is physical separation and thorough cleaning with soap and water.

### 3.3 Equipment Separation for Allergen Management

| Equipment Type | Allergen Management Strategy | Design Implication |
|---------------|------------------------------|-------------------|
| **Cutting boards** | Purple designated for allergen-free; separate from all other color-coded boards | Storage rack or drawer specifically for allergen-free boards |
| **Fryers** | Shared fryers are a major cross-contact risk (e.g., fish in same oil as French fries) | Dedicated fryer for allergen-free items or separate from fish/shellfish fryer |
| **Mixers/food processors** | Residual allergens can survive cleaning cycles | Dedicated small mixer or thorough disassembly and washing between uses |
| **Ovens** | Airborne allergen transfer possible (wheat flour, nut particles) | Separate baking schedule or dedicated oven for allergen-free items |
| **Serving utensils** | Cross-contact at serving line from shared utensils | Separate, clearly labeled utensils for each dish; no shared serving spoons |

### 3.4 Serving Line Design for Allergen Safety

| Feature | Standard | Rationale |
|---------|---------|-----------|
| **Separate serving utensils** per dish | Each food item has its own dedicated serving utensil; utensils do not move between dishes | Prevents utensil-to-food cross-contact |
| **Sneeze guards** | Required at all self-service and staff-served lines | Prevents student-to-food contact; also protects against sneeze/cough |
| **Allergen identification cards** | Posted at each food item on serving line identifying all Big 9 allergens present | Enables students/staff to identify safe foods |
| **Allergen-free meal station** | Separate pickup location or clearly designated section of serving line for pre-plated allergen-free meals | Prevents cross-contact during service; meals are pre-plated and covered |
| **Physical barriers between dishes** | Dividers or raised edges between food wells | Prevents drip/splash between adjacent dishes |
| **Covered transport** | Allergen-free meals transported in covered containers from kitchen to serving | Prevents airborne allergen contact during transport |

### 3.5 Special Considerations for K-12

| Consideration | Design Requirement | Source |
|--------------|-------------------|--------|
| **EpiPen storage** | Epinephrine auto-injectors must be stored in an unlocked, accessible location known to all staff; at least two devices per allergic student | CDC Voluntary Guidelines; FARE recommendations |
| **EpiPen proximity** | Within the cafeteria/kitchen area and in the school nurse's office; consider wall-mounted case near serving area | AAP Allergy Management in Schools |
| **Allergen-free eating area** | Designated table(s) in cafeteria for students with severe allergies; cleaned before use | CDC Guidelines; more important for younger children (K-3) |
| **Communication systems** | Mechanism for parents to communicate allergens to kitchen; kitchen to communicate menu allergens to parents | Typically operational, not design-related |
| **Age-appropriate signage** | Visual allergen identification (icons, not just text) for young children | Posted at eye level for elementary students |
| **Emergency protocol posting** | Anaphylaxis response protocol posted in kitchen, cafeteria, and near EpiPen storage | CDC Guidelines |

Sources: [CDC -- Managing Food Allergies in Schools: Voluntary Guidelines (PDF)](https://www.cdc.gov/school-health-conditions/media/pdfs/20_316712-a_fa_guide_508tag.pdf), [FARE -- Food Allergy Management in Schools (FAMS) Expert Recommendations](https://www.foodallergy.org/resources/fams-expert-recommendations-pdf), [AAP -- Allergy and Anaphylaxis Management in Schools](https://www.aap.org/en/patient-care/school-health/management-of-chronic-conditions-in-schools/allergy-and-anaphylaxis-management-in-schools/), [PMC -- Management of Food Allergy in the School Setting](https://pmc.ncbi.nlm.nih.gov/articles/PMC11250442/)

### 3.6 Implications for the App

| Assessment Type | What to Check | Threshold / Target |
|----------------|---------------|-------------------|
| **Visually assessed** (object detection) | Dedicated allergen-free prep area with separate equipment | Detect purple cutting boards; separate labeled prep surface |
| **Visually assessed** (OCR) | Allergen identification signage at serving line | Allergen cards/labels present at each serving position |
| **Visually assessed** (object detection) | Separate serving utensils per dish at serving line | Each food well has its own utensil |
| **Visually assessed** (object detection) | Sneeze guards present at serving line | Continuous sneeze guard coverage over all serving positions |
| **Visually assessed** (object detection + OCR) | EpiPen storage visible and labeled near cafeteria/kitchen | Wall-mounted case or designated storage location |
| **Visually assessed** (OCR) | Emergency anaphylaxis protocol posted | Posted protocol near serving area and kitchen |
| **Operational assessment** | Actual allergen management practices, cleaning between allergen and allergen-free prep, fryer oil management | Requires observation and document review |
| **Document review** | Allergen management plan, individual student allergy action plans, staff training records | Required by most state guidelines |
| **CV detection palette** | Object detection for cutting boards (MEDIUM -- color classification needed); OCR for signage (HIGH); sneeze guard detection (HIGH); EpiPen case detection (MEDIUM) | See [01_CV_CAPABILITIES.md](./01_CV_CAPABILITIES.md) Sections 2, 4 |

---

## 4. Handwashing Station Design and Placement

### 4.1 FDA Food Code Requirements (2022 Edition)

Handwashing is the single most effective intervention for preventing cross-contamination and foodborne illness transmission. The FDA Food Code dedicates multiple sections to handwashing facility requirements.

| Requirement | FDA Food Code Section | Specification |
|-------------|----------------------|---------------|
| **Number** | 5-203.11 | At least one handwashing sink in each food preparation, food dispensing, and warewashing area |
| **Accessibility** | 5-204.11 | Handwashing sinks shall be accessible at all times for employee use; not blocked by equipment, supplies, or other objects |
| **Dedicated use** | 5-205.11 | Handwashing sinks shall not be used for purposes other than handwashing (not for food prep, utensil washing, equipment cleaning, or disposing of mop water) |
| **Water temperature** | 5-202.12 | Minimum **85 deg F (29.4 deg C)** -- changed from 100 deg F in the 2022 edition |
| **Mixing valve** | 5-202.12 | A mixing valve or combination faucet shall be provided to temper hot water for handwashing |
| **Soap** | 6-301.11 | Hand cleaning preparation (liquid, powder, or bar soap) available at each handwashing sink |
| **Drying** | 6-301.12 | Individual disposable towels, continuous towel system, heated-air hand drying device, or a hand drying device that employs an air-knife system |
| **Waste receptacle** | 6-301.14 | Waste receptacle at each handwashing sink if disposable towels are provided |
| **Signage** | 6-301.14 | Sign or poster directing employees to wash hands posted at each handwashing sink used by food employees; sign in restrooms directing employees to wash hands before returning to work |
| **Placement proximity** | Various local codes | Many jurisdictions specify **within 25 feet** of any food handling area; FDA uses "conveniently located" and "accessible" language |

**Note on the 2022 temperature change**: The reduction from 100 deg F to 85 deg F reflects research showing that water temperature does not significantly affect handwashing effectiveness for pathogen removal. Warm water encourages compliance (cold water discourages handwashing) while reducing scald risk.

Sources: [FDA Food Code 2022](https://www.fda.gov/media/164194/download), [FDA Food Code 2022 Chapter 5](https://www.c-uphd.org/documents/eh/2022-FDA-Food-Code-Chapter-6-Physical-Facilities.pdf), [FDA Food Code 2022 Summary of Changes](https://www.fda.gov/media/164231/download)

### 4.2 Optimal Placement by Kitchen Zone

| Kitchen Zone | Handwashing Station Placement | Rationale |
|-------------|-------------------------------|-----------|
| **Receiving** | At or near the entrance to the kitchen from the loading dock | Staff wash hands after handling delivery items (boxes, pallets) before entering food areas |
| **Cold prep** | Within the cold prep zone, adjacent to prep tables | Handwashing between handling different food types; after handling raw produce |
| **Raw meat/poultry prep** | Immediately adjacent to raw protein prep area | Critical CCP -- hands must be washed after handling raw meat/poultry before touching anything else |
| **Cooking line** | Within reach of cooking stations without leaving the line | Handwashing during cooking (after handling raw items, after sneezing/coughing) |
| **Serving line (staff side)** | Behind the serving line, accessible without leaving the serving area | Handwashing between handling different foods, after touching face/hair |
| **Warewashing** | In or at the entrance to the warewashing area | Handwashing after handling soiled dishes before re-entering food areas |
| **Restrooms** | Inside restrooms AND at the kitchen entrance from restrooms | Double handwashing -- in restroom AND upon re-entering kitchen |
| **Allergen-free prep zone** | At or adjacent to the allergen-free prep area | Handwashing between allergen and allergen-free food handling |

### 4.3 Common Violations

| Violation | Frequency | Design Fix |
|-----------|-----------|------------|
| **Blocked sinks** | Very common -- equipment or supplies placed in front of handwash sink | Install sinks in locations where equipment cannot be placed in front; wall-mount with no counter below |
| **Sinks used for food prep** | Common -- staff use hand sink to rinse produce or thaw food | Install hand sinks that are clearly too small for food prep (10" x 14" bowl); post "Handwashing Only" signage |
| **Insufficient number** | Common in older kitchens -- may have only 1 handwash sink for entire kitchen | During renovation, add sinks at every zone transition point |
| **No hot water** | Occasional -- hot water heater undersized or plumbing issue | Dedicated hot water supply to hand sinks; instant hot water heaters if main system is unreliable |
| **Missing soap/towels** | Common operational issue -- dispensers empty | Mounted, refillable dispensers (not bottles on counter); establish restocking protocol |
| **No signage** | Common -- missing or illegible handwashing signs | Permanent, laminated signs mounted above each sink |
| **Sink in inconvenient location** | Design flaw -- sink too far from work area; staff skip handwashing | Relocate or add sinks; 25 ft maximum from any food handling activity |

### 4.4 Best Practice: Touchless/Hands-Free Fixtures

| Feature | Benefit | Cost Premium vs. Standard |
|---------|---------|--------------------------|
| **Sensor-activated faucet** | Eliminates recontamination from faucet handles; saves water | +$100--$300 per fixture |
| **Sensor-activated soap dispenser** | Eliminates touching soap pump; consistent soap delivery | +$30--$80 per dispenser |
| **Paper towel dispenser (hands-free)** | Motion-activated dispensing; eliminates touching dispenser | +$20--$50 per dispenser |
| **Foot-pedal operated faucet** | Alternative to sensor; more reliable in wet environments | +$50--$150 per fixture |
| **Knee-operated faucet** | Another hands-free alternative; common in surgical scrub sinks | +$50--$200 per fixture |

**Recommendation**: Touchless fixtures are considered best practice by the Institute of Child Nutrition and are increasingly common in new school kitchen construction. They reduce recontamination risk and are particularly valuable at sinks located between raw protein prep and other areas.

### 4.5 Hand Sanitizer Stations

Hand sanitizer is a **supplement, not a replacement** for handwashing (FDA Food Code 2-301.16).

| Requirement | Specification |
|-------------|---------------|
| **Permitted use** | After proper handwashing, as an additional step; never in place of handwashing |
| **Concentration** | At least 60% alcohol (per CDC recommendation) |
| **Placement** | At zone transition points (entering serving line, entering kitchen from dining, between prep tasks) |
| **Not permitted as sole method** | Cannot be used instead of handwashing after restroom use, after handling raw meat, after touching bare human body, after sneezing/coughing |

### 4.6 Implications for the App

| Assessment Type | What to Check | Threshold / Target |
|----------------|---------------|-------------------|
| **Visually assessed** (object detection) | Handwashing sink count per zone | At least 1 in each: food prep, food dispensing/serving, warewashing area (FDA 5-203.11) |
| **Visually assessed** (LiDAR) | Distance from handwashing sink to nearest food handling area | <=25 ft (many jurisdictions); flag any work area >25 ft from nearest hand sink |
| **Visually assessed** (object detection) | Hand sink accessibility -- not blocked by equipment | Flag any hand sink with equipment/items within 24 inches in front |
| **Visually assessed** (object detection) | Soap dispenser, paper towel dispenser, and waste receptacle present at each hand sink | All three required; flag if any is missing |
| **Visually assessed** (OCR) | "Handwashing Only" or similar signage above each hand sink | Signage required per FDA 6-301.14 |
| **Visually assessed** (object detection) | Sink type identification: hand sink vs. prep sink vs. 3-compartment sink | Hand sinks are smaller (typically 10" x 14" bowl); detect by size comparison |
| **Visually assessed** (object detection) | Touchless/hands-free fixtures | Detect sensor faucets, foot pedals, knee valves as best practice |
| **Operational assessment** | Water temperature (>=85 deg F), soap availability, towel supply, actual handwashing frequency | Requires physical inspection |
| **CV detection palette** | Object detection for sinks and dispensers (HIGH confidence); size measurement for sink type classification (HIGH via LiDAR); OCR for signage (HIGH); spatial analysis for distance (HIGH) | See [01_CV_CAPABILITIES.md](./01_CV_CAPABILITIES.md) Sections 1, 2, 4 |

---

## 5. Temperature Control: Equipment Placement

### 5.1 The Danger Zone and Equipment Strategy

The temperature danger zone -- **41 deg F to 135 deg F (5 deg C to 57 deg C)** -- is the range in which foodborne pathogens grow most rapidly. Kitchen design should minimize the time food spends in this range. Strategic equipment placement is the primary design tool for achieving this.

**Principle**: Every transition between equipment should minimize the distance and time food travels through the danger zone.

### 5.2 Strategic Equipment Placement

| Equipment | Optimal Placement | Food Safety Rationale | Distance Standard |
|-----------|-------------------|----------------------|-------------------|
| **Prep tables** | Adjacent to refrigeration (within 5--10 ft) | Minimizes time cold items spend at room temperature during prep | <=10 ft from walk-in or reach-in |
| **Cooking line** | Adjacent to prep area; under ventilation hood | Minimizes carry distance from prep to cooking; no crossing of traffic | <=10 ft from prep; directly under hood |
| **Hot holding equipment** | Between cooking line and serving area | Food moves directly from cooking to holding without temperature drop | <=5 ft from cooking; <=10 ft from serving |
| **Blast chiller** | Adjacent to cooking line | Hot food enters cooling immediately after cooking; minimizes danger zone transit | <=10 ft from cooking line; ideally <=5 ft |
| **Ice machine** | Near prep and serving areas | Ice available for cold holding, cooling methods, beverage service | Within 20 ft of prep; within 15 ft of serving |
| **Cold holding wells** | Integrated into serving line | Cold food maintained at <=41 deg F during entire service period | Built into serving counter |
| **Hot holding wells** | Integrated into serving line | Hot food maintained at >=135 deg F during entire service period | Built into serving counter |
| **Pass-through refrigerators** | Between kitchen and serving (back-to-back configuration) | Staff loads from kitchen side; servers access from serving side without entering kitchen | Installed in wall between kitchen and serving |
| **Pass-through warmers** | Between cooking and serving (back-to-back configuration) | Hot food loaded from kitchen side; accessed from serving side | Installed in wall between cooking and serving |
| **Receiving thermometer** | At receiving desk/staging area | Temperature verification occurs immediately upon delivery | At receiving station |

### 5.3 Thermal Zoning

Kitchens should be designed with thermal zones to prevent heat from cooking equipment from affecting cold storage performance and food safety.

| Zone | Equipment | Temperature Objective | Design Consideration |
|------|-----------|----------------------|---------------------|
| **Hot zone** | Ranges, ovens, fryers, steamers, griddles, broilers | Cooking temperatures (300--500+ deg F equipment surface) | Concentrated under hood system; separated from cold storage |
| **Warm zone** | Hot holding equipment, pass-through warmers | >=135 deg F (57 deg C) | Between hot zone and serving; insulated from cold zone |
| **Ambient zone** | Prep tables, dry storage, administrative area | Room temperature (~68--76 deg F / 20--24 deg C) | Adequate HVAC to maintain comfort; separate from hot zone |
| **Cold zone** | Walk-in coolers, walk-in freezers, reach-in refrigerators | <=41 deg F (cooler); <=0 deg F (freezer) | Separated from hot zone; adequate ventilation for condenser units |

**Key design rule**: Walk-in coolers and freezers should **not** be placed directly adjacent to cooking equipment. Heat from cooking raises ambient temperature around refrigeration units, increasing energy consumption and reducing cooling efficiency. A minimum separation of 5 ft (1.5 m) between the hot zone and cold storage equipment is recommended.

**Condenser ventilation**: Walk-in cooler/freezer condenser units produce significant heat. They should be located where they do not contribute to kitchen ambient temperature (exterior-mounted or in a ventilated mechanical room).

### 5.4 Ambient Temperature Impact on Food Safety

| Kitchen Area | Target Ambient Temperature | Impact of Excess Heat |
|-------------|---------------------------|----------------------|
| **Prep area** | 68--76 deg F (20--24 deg C) | Higher ambient temps reduce the time food can safely remain out of refrigeration |
| **Cooking line** | Up to 90--100 deg F (32--38 deg C) typical | Workers experience heat stress; food in danger zone heats faster |
| **Serving area** | 68--76 deg F (20--24 deg C) | Higher temps stress cold holding equipment; hot holding is less affected |
| **Storage areas** | 50--70 deg F (10--21 deg C) for dry storage | Excess heat accelerates food degradation and pest activity |
| **Warewashing area** | Up to 85--95 deg F (29--35 deg C) typical | Heat and humidity from dishwasher; good ventilation essential |

**Design implication**: Adequate ventilation (see [02_REGULATORY_CODE_LANDSCAPE.md](./02_REGULATORY_CODE_LANDSCAPE.md) Sections 2.2 and 5) directly affects food safety by controlling ambient kitchen temperature. Hood systems that are undersized or poorly balanced allow heat to build up, which stresses cold holding equipment and reduces safe food handling time at room temperature.

### 5.5 Implications for the App

| Assessment Type | What to Check | Threshold / Target |
|----------------|---------------|-------------------|
| **Visually assessed** (LiDAR) | Prep table distance from nearest refrigeration | <=10 ft from walk-in or reach-in |
| **Visually assessed** (LiDAR) | Blast chiller distance from cooking line | <=10 ft; flag absence if kitchen performs complex food prep |
| **Visually assessed** (LiDAR) | Hot holding equipment between cooking and serving | Within 5 ft of cooking; within 10 ft of serving |
| **Visually assessed** (object detection) | Pass-through refrigerators or warmers between kitchen and serving | Detect back-to-back units in wall between zones |
| **Visually assessed** (LiDAR + object detection) | Thermal zone separation -- cooking equipment distance from cold storage | >=5 ft between hot equipment and walk-in cooler/freezer exterior |
| **Visually assessed** (object detection) | Ice machine presence and proximity to prep/serving | Within 20 ft of prep; within 15 ft of serving |
| **Operational assessment** | Actual equipment temperatures, ambient temperature, ventilation adequacy | Requires physical measurement |
| **CV detection palette** | LiDAR for distances (HIGH feasibility); equipment detection (HIGH for refrigerators, ovens; MEDIUM for blast chillers, pass-throughs) | See [01_CV_CAPABILITIES.md](./01_CV_CAPABILITIES.md) Sections 1--2 |

---

## 6. Cleaning and Sanitation Design Features

### 6.1 Harborage Point Reduction

Harborage points are crevices, gaps, and rough surfaces where bacteria, pests, and food debris accumulate. Kitchen design should minimize these.

| Design Feature | Requirement | FDA Food Code Section | Specification |
|---------------|-------------|----------------------|---------------|
| **Coved base molding** | Floor-wall junctures shall be coved | 6-201.18 | Minimum **3/8-inch (10 mm) radius** coving; extending at least **4 inches (100 mm)** up the wall |
| **Sealed wall-floor junctions** | No gaps between floor and wall surfaces | 6-201.18 | Continuous sealed joint; no gaps that could harbor pests or moisture |
| **Smooth, non-porous surfaces** | Floors, walls, and ceilings in food areas | 6-101.11, 6-201.11 | Smooth, durable, easily cleanable, nonabsorbent in wet areas |
| **Floor-mounted equipment on legs** | Equipment not easily movable | 4-402.11 | Minimum **6 inches (150 mm)** clearance above floor |
| **Counter-mounted equipment on legs** | Equipment on countertops | 4-402.12 | Minimum **4 inches (100 mm)** clearance above counter |
| **Sealed to floor** (alternative) | Equipment not on legs | 4-402.11 | Must be completely sealed to floor with no gaps |
| **No dead-end pipes** | Plumbing system | IPC / local code | Dead-end pipes accumulate stagnant water that can harbor Legionella and other pathogens |
| **Rounded interior corners** | Equipment food-contact surfaces | 4-101.11, NSF/ANSI 2 | Minimum 1/8-inch radius on interior corners of food-contact surfaces |
| **No exposed fasteners** | Equipment food-contact surfaces | NSF/ANSI 2 | No exposed screw threads, bolt heads, or rivets on food-contact surfaces |
| **Sealed penetrations** | Where pipes, conduit, or ducts pass through walls, floors, or ceilings | 6-202.15 | Sealed flush with wall; no gaps that could admit pests |

### 6.2 Three-Compartment Sink Design and Placement

The three-compartment sink is required by the FDA Food Code (Section 4-301.12) for manual warewashing in all food service establishments.

| Specification | Requirement | Source |
|--------------|-------------|--------|
| **Compartment size** | Each compartment large enough to fully submerge the largest equipment/utensil to be cleaned | FDA Food Code 4-301.12 |
| **Minimum compartment dimensions** | 12" x 12" x 10" (but must accommodate largest item) | FDA Food Code |
| **Drainboard space** | Each drainboard at least as large as the sink compartments; two drainboards (one for soiled items, one for clean items to air dry) | FDA Food Code 4-301.13 |
| **Indirect waste connection** | Drain to floor sink via indirect connection with minimum 1-inch air gap | IPC; FDA Food Code 5-402.13 |
| **Water temperatures** | Wash: >=100 deg F (38 deg C); Rinse: >=110 deg F (43 deg C); Sanitize: >=171 deg F (77 deg C) for hot water method, or chemical sanitizer per manufacturer direction | FDA Food Code 4-501.112, 4-501.114 |
| **Chemical test kit** | Must be available at the sink for checking sanitizer concentration | FDA Food Code 4-302.14 |
| **Placement in workflow** | In the warewashing zone; soiled items enter from one side, clean items exit the other | Linear flow prevents recontamination |
| **Hand sink nearby** | Handwashing sink within the warewashing area | FDA Food Code 5-203.11 |

### 6.3 Commercial Dishwasher Placement

| Placement Criterion | Standard | Rationale |
|--------------------|---------|-----------|
| **In warewashing zone** | Separate from food prep and cooking zones | Prevents cross-contamination from soiled dishes |
| **Adjacent to serving returns** | Soiled dish window/pass-through from dining to warewashing | Linear flow: dining returns -> scrape/sort -> wash -> clean storage |
| **Clean side adjacent to clean storage** | Dish machine output faces clean dish storage area | Minimizes handling of clean dishes; prevents recontamination |
| **Landing table on both sides** | Dirty-side landing table (36--48 inches); clean-side landing table (36--48 inches) | Space for staging soiled and clean items |
| **Ventilation** | Under Type II hood or with local exhaust | Dishwashers produce significant steam and heat |
| **Booster heater** | Adjacent to or mounted on dish machine | Required for hot-water sanitizing machines (final rinse >=180 deg F / 82 deg C) |

### 6.4 Floor Drain Design and Placement

| Requirement | Specification | Source |
|-------------|---------------|--------|
| **Location** | At all points where water is discharged to the floor (warewashing, prep sinks, walk-in coolers, hood drip points) | IPC / local code |
| **Slope to drain** | Floor sloped minimum 1/8 inch per foot toward drain | IPC |
| **Trap design** | Each drain must have a trap to prevent sewer gas backflow; self-priming traps recommended | IPC |
| **Maintenance access** | Drains must be accessible for cleaning; not located under fixed equipment | FDA Food Code; best practice |
| **Grate design** | Removable grate for cleaning; grate openings small enough to prevent debris entry into drain line | NSF standard |
| **Air gap for equipment drains** | Equipment drains (dishwashers, ice machines, etc.) must discharge through an air gap to a floor sink | FDA Food Code 5-402.13; IPC |

### 6.5 Sanitation Station Layout

| Station Component | Placement | Purpose |
|-------------------|----------|---------|
| **Chemical dispensing system** | Wall-mounted in warewashing area or utility closet; separate from food prep | Automatic dilution of cleaning chemicals; prevents over/under-concentration |
| **Mop sink** | Utility closet or janitor's room; separate from food prep areas and food storage | Mop water disposal; filling mop buckets; must not be used for food purposes |
| **Cleaning supply storage** | Separate from food storage; below or away from food-contact surfaces | Chemicals stored below or away from food to prevent contamination (FDA Food Code 7-201.11) |
| **Bucket/spray bottle filling** | Near mop sink or utility sink; not at food prep sinks | Prevents chemical contamination of food-contact sinks |
| **SDS station** | Accessible location near chemical storage; visible to all staff | OSHA 1910.1200 (Hazard Communication) -- SDS must be readily accessible |

### 6.6 Pest Prevention Design Features

| Design Feature | Specification | Source |
|---------------|---------------|--------|
| **Air curtains at exterior doors** | NSF/ANSI 37 certified air curtains on exterior doors used for receiving, waste disposal, or ventilation | FDA Food Code 6-202.15; velocity >=1,600 FPM at 3 ft height |
| **Self-closing exterior doors** | All exterior doors self-closing with tight-fitting frames | FDA Food Code 6-202.15 |
| **Door sweeps** | Rodent-proof sweeps on all exterior doors; gap below door <=1/4 inch | FDA Food Code 6-202.15; pest control best practice |
| **Window screens** | 16-mesh-per-inch screening on all windows that open | FDA Food Code 6-202.15 |
| **Sealed penetrations** | All openings >1/4 inch where pipes, conduit, or ducts penetrate walls sealed | FDA Food Code 6-202.15; pest control best practice |
| **Coving at floor-wall junctions** | Continuous coving eliminates pest harborage at base of walls | FDA Food Code 6-201.18 |
| **No dead spaces** | Equipment arranged to eliminate inaccessible gaps where pests can nest | Best practice |
| **Proper waste containment** | Waste containers with tight-fitting lids; dumpster on paved surface away from building | FDA Food Code 5-501.113 |
| **Interior pest monitoring** | Insect light traps (ILTs) near exterior doors but away from food prep; rodent monitoring stations along walls | Integrated pest management (IPM) best practice |

Sources: [FDA Food Code 2022 Chapter 6](https://www.fda.gov/media/164194/download), [Powered Aire -- Air Curtains for Food Service](https://poweredaire.com/air-curtain/commercial/food-service-and-insect-control), [Quality Assurance Magazine -- Pest Prevention by Design](http://magazine.qualityassurancemag.com/article/july-2017/pest-prevention-------by-design.aspx)

### 6.7 Implications for the App

| Assessment Type | What to Check | Threshold / Target |
|----------------|---------------|-------------------|
| **Visually assessed** (surface analysis) | Coved base molding present at floor-wall junctions | 3/8-inch radius minimum; extending 4 inches up wall (MEDIUM feasibility -- below LiDAR precision; flag for manual verification) |
| **Visually assessed** (LiDAR) | Floor-mounted equipment leg clearance | >=6 inches (150 mm) above floor (MARGINAL -- 5 cm accuracy vs. 15 cm threshold) |
| **Visually assessed** (LiDAR) | Counter-mounted equipment clearance | >=4 inches (100 mm) above counter (MARGINAL) |
| **Visually assessed** (object detection) | Three-compartment sink presence and drainboard space | Detect 3-compartment sink; drainboards on both sides |
| **Visually assessed** (object detection) | Floor drain presence at appropriate locations | Detect drains near warewashing, prep sinks, walk-in coolers |
| **Visually assessed** (object detection) | Air curtain presence at exterior doors | Detect air curtain units above doorways |
| **Visually assessed** (object detection) | Mop sink / utility sink in separate area from food prep | Detect mop sink; verify not in food prep zone |
| **Visually assessed** (surface analysis) | Surface condition -- cracks, gaps, deterioration in floors/walls/ceilings | Crack detection (91--95% accuracy); rust detection (F1 ~0.71); mold detection (87--90% accuracy) |
| **Visually assessed** (OCR) | Chemical labels readable; SDS posted | OCR for label reading (HIGH feasibility) |
| **Operational assessment** | Floor slope to drains, drain trap condition, chemical concentrations, cleaning schedule compliance | Requires physical inspection |
| **CV detection palette** | Surface condition analysis (HIGH feasibility); object detection for sinks, drains, air curtains (MEDIUM--HIGH); LiDAR for equipment clearances (MARGINAL for small clearances) | See [01_CV_CAPABILITIES.md](./01_CV_CAPABILITIES.md) Sections 1--3 |

---

## 7. Water Supply and Plumbing for Food Safety

### 7.1 Backflow Prevention Requirements

Backflow occurs when contaminated water flows backward into the potable water supply. In a kitchen, this can introduce chemical sanitizers, food waste, or sewage into the drinking water system. Backflow prevention is governed by the International Plumbing Code (IPC) and FDA Food Code.

| Fixture/Equipment | Backflow Risk Level | Required Protection | Standard |
|-------------------|--------------------|--------------------|---------|
| **Commercial dishwasher** | High (chemical sanitizers) | Air gap, atmospheric vacuum breaker (AVB), or pressure vacuum breaker (PVB) | IPC 608; ASSE 1001/1011 |
| **Three-compartment sink** | High (chemical sanitizers, food waste) | Air gap between faucet outlet and flood-level rim of sink | FDA Food Code 5-202.13 |
| **Ice machine** | High (direct consumption) | Air gap on water supply inlet | NSF/ANSI 12; IPC 608 |
| **Steam equipment** | Moderate (direct food contact) | Atmospheric vacuum breaker or equivalent | IPC 608 |
| **Prep sinks** | Moderate (food waste) | Air gap or backflow preventer | IPC 608 |
| **Hose connections** | Moderate (chemical exposure) | Hose-connection backflow preventer | ASSE 1052 |
| **Fire suppression system** (pre-charge) | High (chemical agent) | Reduced pressure zone (RPZ) assembly | IPC 608; ASSE 1013 |
| **Building main water supply** | Variable | RPZ assembly or reduced pressure detector assembly at building entrance | Per local water utility requirements |

**Air gap requirements** (FDA Food Code 5-202.13):
- Minimum air gap = **2x the diameter** of the water supply inlet
- Never less than **1 inch (25 mm)**
- Must be a physical, vertical space (no mechanical devices substitute for an air gap at food-contact equipment)

### 7.2 Hot Water Capacity

Inadequate hot water supply is a common food safety violation, especially during peak usage (dishwashing, handwashing, cooking, cleaning all occurring simultaneously).

| Use | Temperature Required | Peak Demand Consideration |
|-----|---------------------|--------------------------|
| **Handwashing** | >=85 deg F (29.4 deg C) | All hand sinks simultaneously during peak prep |
| **Three-compartment sink (wash)** | >=100 deg F (38 deg C) | Continuous during warewashing |
| **Three-compartment sink (rinse)** | >=110 deg F (43 deg C) | Continuous during warewashing |
| **Three-compartment sink (sanitize, hot water method)** | >=171 deg F (77 deg C) | Intermittent; large volume demand |
| **Dishwasher (incoming water to booster)** | >=140 deg F (60 deg C) | Continuous during dish cycles |
| **Dishwasher (final rinse)** | >=180 deg F (82 deg C) | Booster heater raises from 140 deg F to 180 deg F |
| **General cleaning** | >=100 deg F (38 deg C) | End of service; major cleaning events |

**Sizing principle**: The water heater must be sized so that **recovery rate** (gallons per hour at rated temperature rise) meets peak demand, not just storage capacity. A common school kitchen requires a water heater with a minimum recovery rate of 100--200+ GPH at a 100 deg F rise, depending on the number of fixtures and dishwasher type.

**Booster heater requirement**: Every high-temperature commercial dishwasher requires a booster heater to raise incoming water from 140 deg F to 180 deg F at the final rinse manifold. The booster must be sized to match the dishwasher's rinse cycle demand (typically 3--6 GPM for rack-type machines).

Sources: [Georgia DPH -- Hot Water Supply Requirements](https://dph.georgia.gov/document/document/section-k-hot-water-supply-requirements/download), [Maricopa County -- Hot Water Supply Requirements](https://www.maricopa.gov/DocumentCenter/View/5888/Hot-Water-Supply-Requirements-PDF), [San Diego County -- Water Heater Sizing Guidelines](https://www.sandiegocounty.gov/content/dam/sdc/deh/fhd/food/pdf/publications_waterheatersizing.pdf)

### 7.3 Grease Trap/Interceptor Placement

| Type | Capacity | Location | Maintenance |
|------|----------|----------|-------------|
| **Hydromechanical grease interceptor (HGI)** | Typically 20--100 GPM; 7--10 minute retention time | Inside the building, near the source fixtures; vertical distance from fixture outlet to interceptor inlet <=30 inches; developed pipe length <=60 inches | Clean at minimum monthly or more frequently based on accumulation |
| **Gravity grease interceptor (GGI)** | >=500 gallons minimum; 30-minute retention time | Underground outside the building, upstream of sanitary sewer connection | Pump out per local sewer district schedule (typically quarterly) |

**Sizing formula** (IPC Chapter 10):
- Total flow rate = sum of all connected fixture GPM (100% of largest + 50% of second + 25% of each additional)
- Total capacity must not exceed 2.5x the certified GPM flow rate
- Retention time x flow rate = required gallons

**Emergency floor drain**: Required downstream of grease interceptor connection per IPC.

### 7.4 Indirect Waste Connections

Food equipment that could potentially contaminate the drainage system if directly connected must discharge through an **indirect waste pipe** with an air gap.

| Equipment Requiring Indirect Waste | Air Gap Minimum | Discharge Point |
|-----------------------------------|-----------------|-----------------|
| **Dishwashers/warewashers** | 1 inch above floor sink rim | Floor sink |
| **Ice machines** | 1 inch above floor sink rim | Floor sink |
| **Beverage dispensers** | 1 inch above floor sink rim | Floor sink |
| **Refrigeration condensate drains** | 1 inch above floor sink rim | Floor sink |
| **Steam tables/combi ovens** | 1 inch above floor sink rim | Floor sink |
| **Water treatment equipment** | 1 inch above floor sink rim | Floor sink |
| **Three-compartment sinks** | 1 inch above floor sink rim | Floor sink |

**Floor sink placement rules**:
- Accessible for cleaning (not under equipment)
- Located where splash will not contaminate food or clean equipment
- Sized for peak flow (will not overflow during busy periods)
- Equipped with removable grate/strainer

Sources: [IPC 2021 Chapter 10 -- Traps, Interceptors, and Separators](https://codes.iccsafe.org/content/IPC2021P1/chapter-10-traps-interceptors-and-separators), [Northern Nevada Public Health -- Backflow Prevention in Food Establishments (PDF)](https://www.nnph.org/files/ehs/food-protection-services/Backflow-Guidance-Document.pdf), [Rhode Island DOH -- Air Gaps and Backflow Prevention (PDF)](https://datahealth.ri.gov/publications/factsheets/air-gaps-backflow-prevention.pdf)

### 7.5 Implications for the App

| Assessment Type | What to Check | Threshold / Target |
|----------------|---------------|-------------------|
| **Visually assessed** (object detection) | Floor sinks present near equipment requiring indirect waste (dishwashers, ice machines, beverage dispensers) | Floor sink within 5 ft of each applicable fixture |
| **Visually assessed** (object detection) | Grease trap/interceptor visible (if above-grade HGI) | Detect HGI unit near 3-compartment sink or pot sink area |
| **Visually assessed** (LiDAR) | Air gap visible between equipment drain and floor sink | Air gap >=1 inch (difficult to measure precisely; flag for manual verification) |
| **Visually assessed** (object detection) | Booster heater present adjacent to commercial dishwasher | Required for all high-temp dishwashers |
| **Operational assessment** | Water temperature at each fixture, backflow preventer test certificates, grease trap pumping records | Requires physical testing and document review |
| **Document review** | Backflow prevention device test records (annual), grease trap maintenance records, water quality test results | Required by local water utility and sewer district |
| **CV detection palette** | Object detection for floor sinks (MEDIUM confidence); grease interceptor detection (LOW -- often concealed); booster heater detection (MEDIUM); backflow devices (LOW -- usually concealed) | See [01_CV_CAPABILITIES.md](./01_CV_CAPABILITIES.md) Section 2 |

---

## 8. Temperature Monitoring Infrastructure

### 8.1 Where Monitoring Points Should Be Located

| Location | Monitoring Type | Frequency | Record-Keeping |
|----------|----------------|-----------|----------------|
| **Walk-in cooler** | Continuous (automated) or manual thermometer check | Continuous preferred; manual: minimum 2x daily (opening and closing) | Daily temperature log |
| **Walk-in freezer** | Continuous (automated) or manual thermometer check | Continuous preferred; manual: minimum 2x daily | Daily temperature log |
| **Each reach-in refrigerator** | Internal thermometer | Manual: minimum 2x daily | Daily temperature log |
| **Each hot holding unit** | Thermometer in unit | Every 2 hours during service, or continuous | Temperature log during service |
| **Each cold holding well** | Thermometer in well | Every 2 hours during service, or continuous | Temperature log during service |
| **Cooking line** | Probe thermometer (calibrated) | Each batch of cooked TCS food | Cooking log per batch |
| **Cooling process** | Probe thermometer; blast chiller display | At start, at 2 hours, and at 6 hours (or continuous in blast chiller) | Cooling log per batch |
| **Receiving** | Calibrated probe thermometer | Every delivery of TCS food | Receiving log per delivery |
| **Reheating** | Probe thermometer | Each batch reheated | Reheating log per batch |
| **Dishwasher** | Built-in temperature gauge (final rinse) | Each cycle or per manufacturer recommendation | Warewashing log |

### 8.2 Continuous Monitoring vs. Manual Log Systems

| Feature | Manual Logging | Continuous IoT Monitoring |
|---------|---------------|--------------------------|
| **Data collection** | Staff records temperature on paper form at scheduled intervals (typically 2x/day for coolers) | Wireless sensors transmit temperature data automatically at intervals of 1--15 minutes |
| **Alert capability** | None -- deviation discovered only at next manual check (could be hours later) | Real-time alerts via text, email, or app when temperature exceeds threshold |
| **Data integrity** | Subject to human error, fabrication, or missed readings | Tamper-proof automated records; timestamped and stored in cloud |
| **Record-keeping** | Paper logs that must be filed and retained for inspection | Digital records automatically archived; accessible remotely |
| **Cost** | Thermometers: $5--$50 each; paper logs: minimal | Sensors: $50--$200 each; gateway: $100--$500; monitoring service: $20--$100/month per location |
| **Staff time** | 15--30 minutes/day for manual readings across all equipment | Near-zero daily time after initial setup |
| **Regulatory compliance** | Meets minimum requirements if performed consistently | Exceeds requirements; provides proof of continuous compliance |
| **Failure detection** | Hours-long gaps between readings; overnight failures may go undetected until morning | Immediate detection; night/weekend alerts prevent total loss of stored food |

**Leading IoT temperature monitoring providers for school foodservice**:

| Provider | Key Features | Approximate Cost |
|----------|-------------|-----------------|
| **E-Control Systems (ECS)** | IntelliCheck automated system; HACCP compliance; school district focus | Custom pricing; enterprise |
| **SmartSense by Digi** | Wireless sensors, cloud dashboard, alerts; food safety focus | $50--$150/sensor + monthly fee |
| **Sonicu** | SoniQ monitoring platform; FDA/USDA compliance; healthcare and food | Custom pricing |
| **Monnit** | ALTA sensors; affordable; DIY-friendly | $50--$80/sensor; $20--$50/month |
| **Copeland (formerly Emerson)** | Wireless fixed monitoring; commercial refrigeration focus | Enterprise pricing |
| **Telemetry2U** | Cloud-based; real-time kitchen monitoring; affordable plans | $15--$40/sensor/month |

Sources: [E-Control Systems -- Food Service Temperature Monitoring](https://econtrolsystems.com/solutions/food-service), [SmartSense by Digi -- Food Service Monitoring](https://www.smartsense.co/food-service), [Sonicu -- Food Safety Monitoring](https://www.sonicu.com/industries/food-safety), [Monnit -- Food Service Monitoring](https://www.monnit.com/applications/food-service-monitoring/)

### 8.3 Alarm Thresholds and Notification

| Equipment | Alarm Threshold | Action Required |
|-----------|----------------|-----------------|
| **Walk-in cooler** | >41 deg F (5 deg C) for >30 minutes | Check door seal, compressor; evaluate food safety |
| **Walk-in freezer** | >0 deg F (-18 deg C) for >30 minutes | Check door seal, compressor; begin timer for food disposition |
| **Reach-in refrigerator** | >41 deg F (5 deg C) for >30 minutes | Same as walk-in cooler |
| **Hot holding** | <135 deg F (57 deg C) for >30 minutes | Reheat to 165 deg F or discard; check equipment |
| **Dishwasher final rinse** | <180 deg F (82 deg C) | Do not use for sanitizing; switch to chemical sanitization or repair |
| **Blast chiller** | Food not reaching 70 deg F within 2 hours | Use alternative cooling method; evaluate food safety |

### 8.4 USDA Requirements for School Meal Programs

| Requirement | Specification | Source |
|-------------|---------------|--------|
| **Written food safety plan** | Based on HACCP principles, covering all food storage, preparation, and service areas | 7 CFR 210.13(c) |
| **Temperature monitoring** | Time and temperature monitored at all CCPs | 7 CFR 210.13(c)(1) |
| **Two inspections per year** | Minimum two food safety inspections per school year by state or local agency | 7 CFR 210.13(b) |
| **Posted inspection report** | Most recent inspection report posted in publicly visible location | 7 CFR 210.13(a) |
| **Corrective actions** | Documented corrective actions when critical limits are not met | HACCP Principle 5 |
| **Verification** | Periodic review of HACCP plan and monitoring records | HACCP Principle 6 |
| **Record retention** | Temperature logs and HACCP records retained for 1 year (or per state requirement) | 7 CFR 210.23(c) |

### 8.5 Design Support for Monitoring Compliance

| Design Feature | How It Supports Monitoring | Recommendation |
|---------------|---------------------------|----------------|
| **Clipboard/tablet mount near each CCP** | Makes logging convenient; reduces barriers to compliance | Wall-mounted clipboard or tablet at cooking line, holding area, and receiving desk |
| **Visible thermometer placement** | Staff can check temperatures without opening equipment | External digital display on walk-in coolers/freezers; thermometer visible through glass |
| **Centralized monitoring station** | Single location to view all temperatures | Computer/tablet with IoT dashboard in manager's office or near cooking line |
| **Adequate electrical outlets at monitoring points** | Power for IoT gateways, tablet charging, digital thermometers | Outlets at each monitoring station; avoid extension cords near water |
| **Wi-Fi coverage** | IoT sensors require reliable wireless connectivity throughout kitchen | Verify Wi-Fi reaches all cold storage areas (walk-in coolers with metal walls can block signal) |

### 8.6 Implications for the App

| Assessment Type | What to Check | Threshold / Target |
|----------------|---------------|-------------------|
| **Visually assessed** (object detection) | Thermometer presence on each cold storage unit and hot holding unit | At least one visible thermometer per unit |
| **Visually assessed** (OCR) | Temperature log sheets posted or visible near equipment | Detect clipboard/forms with temperature entries |
| **Visually assessed** (object detection) | IoT monitoring sensors (small wireless devices) on equipment | Detect wireless sensor units on coolers/freezers |
| **Visually assessed** (OCR) | Posted inspection report current and visible | Read date on posted inspection; flag if >6 months old |
| **Visually assessed** (object detection) | Centralized monitoring display (tablet/computer screen) near kitchen | Detect screen/tablet in manager area or near cooking line |
| **Operational assessment** | Actual equipment temperatures, calibration of thermometers, alarm testing, log completeness | Requires physical inspection and document review |
| **Document review** | HACCP plan, temperature logs, corrective action records, inspection reports | 7 CFR 210.13(c) |
| **CV detection palette** | Object detection for thermometers and sensors (MEDIUM confidence); OCR for logs and inspection reports (HIGH feasibility) | See [01_CV_CAPABILITIES.md](./01_CV_CAPABILITIES.md) Sections 2, 4 |

---

## 9. Food Safety Risk Assessment by Kitchen Age and Type

### 9.1 How Kitchen Vintage Affects Food Safety Risk

Kitchen age is a strong predictor of food safety design adequacy. Codes and best practices have evolved significantly over the past three decades, and older kitchens often lack design features now considered essential.

| Kitchen Era | Typical Characteristics | Common Food Safety Deficiencies | Risk Level |
|-------------|------------------------|---------------------------------|------------|
| **Pre-1990** | Built before widespread HACCP adoption; often originally designed for heat-and-serve programs with USDA commodities | Insufficient handwashing stations (often only 1 for entire kitchen); no allergen-free prep area; inadequate refrigeration capacity; no blast chiller; coved base may be absent or damaged; limited three-compartment sink capacity; insufficient hot water capacity | **HIGH** |
| **1990--2005** | Built during early HACCP era; may have some HACCP-aware features | Better handwashing station placement but may still be inadequate; limited or no allergen awareness; may lack blast chiller; equipment approaching end of life; coved base present but may be deteriorated; hood systems may not meet current NFPA 96 | **MODERATE-HIGH** |
| **2005--2015** | Built with HACCP as standard; increasing allergen awareness | Generally adequate HACCP infrastructure; allergen-free zones may be improvised rather than designed; equipment in mid-life; may lack IoT monitoring infrastructure; may not meet 2022 Food Code updates | **MODERATE** |
| **Post-2015** | Built with current best practices; FASTER Act awareness (post-2021) | Most likely to meet current standards; may still lack dedicated allergen-free prep zone if built before 2021; IoT monitoring increasingly standard; touchless fixtures increasingly common | **LOW-MODERATE** |

### 9.2 Heat-and-Serve vs. Scratch Cooking: Food Safety Design Differences

The cooking model profoundly affects food safety risk because it determines which HACCP process categories are active.

| Design Factor | Heat-and-Serve | Speed Scratch | Full Scratch |
|--------------|---------------|---------------|-------------|
| **Active HACCP processes** | Primarily same-day (reheating) | Same-day + some complex | All three (no-cook, same-day, complex) |
| **Cross-contamination risk** | Low -- limited raw ingredient handling | Moderate -- some raw ingredient handling | High -- extensive raw protein and produce handling |
| **CCPs active** | Reheating, hot holding | Cooking, hot holding, some cooling | All CCPs: receiving, storage, prep, cooking, cooling, reheating, holding, serving |
| **Required handwashing stations** | Fewer (less food handling) | Moderate | Maximum (all zones active) |
| **Blast chiller needed** | Rarely | Sometimes (for make-ahead items) | Essential (for soups, casseroles, large-batch items) |
| **Raw/RTE separation needed** | Minimal | Moderate | Essential -- dedicated raw protein prep area |
| **Allergen risk** | Lower (pre-packaged items with labels) | Moderate | Higher (raw ingredients combined; more complex allergen tracking) |
| **Refrigeration capacity** | Moderate (pre-packaged storage) | Increased (raw ingredients + finished items) | Maximum (raw ingredients, in-process items, finished items, cooling items) |
| **Three-compartment sink demand** | Lower (fewer pots/pans) | Moderate | Highest (extensive cookware, utensils, equipment) |
| **Temperature monitoring points** | Fewer | Moderate | Maximum (all process stages) |

**Key insight for the app**: A kitchen transitioning from heat-and-serve to scratch cooking often requires significant infrastructure upgrades. The app should detect the cooking model (based on equipment inventory from [04_KITCHEN_LAYOUT_WORKFLOW.md](./04_KITCHEN_LAYOUT_WORKFLOW.md) Section 1.4) and assess whether the food safety infrastructure matches the cooking model's requirements.

### 9.3 Central Kitchen vs. Satellite: Food Safety Implications

| Factor | Central Kitchen | Satellite Kitchen |
|--------|----------------|-------------------|
| **Food safety scope** | Full HACCP program -- all 7 CCPs active | Receiving (from central), reheating, hot/cold holding, serving |
| **Critical transport CCP** | Must maintain food at safe temperatures during transport to satellites | Must verify temperatures upon receiving from central |
| **Transport temperature requirements** | Hot food: >=135 deg F (57 deg C); Cold food: <=41 deg F (5 deg C) during entire transport | Same at receiving |
| **Transport equipment** | Insulated food carriers, hot/cold holding carts, temperature monitoring during transport | Receiving area with thermometer; holding equipment |
| **Kitchen design complexity** | Full kitchen with all zones | Minimal: receiving, holding, reheating, serving, warewashing |
| **Handwashing needs** | Maximum (all food handling zones) | Moderate (reheating and serving) |
| **Allergen management** | All allergen protocols at central; must communicate to satellites | Must maintain allergen identity from central through service |
| **Blast chiller needed** | Yes, at central kitchen | Rarely needed at satellite |
| **Risk concentration** | Single point of failure -- a food safety issue affects all schools | Risk distributed across many locations |

### 9.4 Common Food Safety Design Deficiencies by Kitchen Age

| Deficiency | Pre-1990 | 1990-2005 | 2005-2015 | Post-2015 |
|-----------|----------|-----------|-----------|-----------|
| Insufficient handwashing stations | Very common | Common | Occasional | Rare |
| No allergen-free prep zone | Universal | Very common | Common | Occasional |
| No blast chiller | Very common | Common | Occasional | Rare (if scratch cooking) |
| Inadequate refrigeration capacity | Common | Occasional | Rare | Rare |
| Missing or damaged coved base | Very common | Common | Occasional | Rare |
| Insufficient three-compartment sink | Common | Occasional | Rare | Rare |
| No IoT temperature monitoring | Universal | Universal | Common | Occasional |
| Insufficient hot water capacity | Common | Occasional | Occasional | Rare |
| No pest exclusion features (air curtains, sealed penetrations) | Very common | Common | Occasional | Rare |
| Inadequate hood ventilation | Common | Occasional | Rare | Rare |

### 9.5 Implications for the App

| Assessment Type | What to Check | How to Assess |
|----------------|---------------|---------------|
| **Visually assessed** (OCR + object detection) | Kitchen age indicators: equipment model numbers (OCR for manufacture dates), tile/finish style, hood system type, plumbing fixture style | Read equipment labels; classify finish materials; identify equipment generation |
| **Visually assessed** (object detection) | Cooking model identification: equipment inventory matches heat-and-serve, speed-scratch, or full scratch | Detect equipment types (combi oven, tilt skillet = scratch; retherm cabinet = heat-and-serve) |
| **Visually assessed** (comprehensive scan) | Food safety infrastructure adequacy for cooking model | Cross-reference detected equipment and layout against the requirements table in Section 9.2 |
| **Visually assessed** (spatial analysis) | Central vs. satellite kitchen identification | Detect presence/absence of full cooking line; receiving area configuration |
| **Risk scoring** | Generate age-adjusted food safety risk score based on all detected factors | Combine kitchen age estimate + cooking model + detected food safety features into composite risk score |
| **CV detection palette** | OCR for equipment dates (HIGH feasibility); equipment detection for cooking model (MEDIUM--HIGH); surface analysis for age indicators (MEDIUM) | See [01_CV_CAPABILITIES.md](./01_CV_CAPABILITIES.md) Sections 2--4 |

---

## 10. Implications for the App: Consolidated Food Safety Detection Matrix

### 10.1 Visual Assessment Capabilities (CV Detection)

This section consolidates all food safety features the app can detect via computer vision, organized by detection confidence level.

#### HIGH Feasibility -- Ready to Use

| What to Detect | Method | Threshold / Standard | Sections |
|---------------|--------|---------------------|----------|
| **Handwashing sink presence and count** | Object detection (Grounding DINO -- small sinks with faucets; soap/towel dispensers nearby) | >=1 per food prep, food dispensing, and warewashing area (FDA 5-203.11) | 4 |
| **Sink type identification** (hand sink vs. prep sink vs. 3-compartment) | Object detection + size measurement via LiDAR | Hand sink: ~10" x 14" bowl; prep sink: larger single bowl; 3-compartment: three adjacent basins | 4, 6 |
| **Sneeze guard presence at serving lines** | Object detection (transparent shields above food) | Required at all serving stations | 2, 3 |
| **Thermometer presence on cold storage** | Object detection (dial or digital thermometers on equipment) | At least one per cold storage unit (FDA 4-204.112) | 1, 8 |
| **Distance measurements** (cold storage to prep, cooking to holding, etc.) | LiDAR spatial analysis | See Section 5.2 for all distance standards | 5 |
| **Equipment spacing and separation zones** | LiDAR spatial analysis | Raw/RTE separation >=4 ft; thermal zoning >=5 ft between hot and cold equipment | 2, 5 |
| **Safety signage** (handwashing, allergen, emergency) | OCR text reading | "Handwashing Only" at each hand sink; allergen cards at serving; emergency protocol posted | 3, 4 |
| **Posted inspection report** | OCR text reading | Current date; publicly visible location (7 CFR 210.13(a)) | 8 |
| **Floor drain presence** | Object detection | Present near warewashing, prep sinks, walk-in coolers | 6 |
| **Air curtain presence at exterior doors** | Object detection | Detect air curtain units above doorways | 6 |
| **Chemical storage separation** | Object detection + spatial analysis | Chemicals stored separately from food items; below or away from food-contact surfaces | 6 |
| **Serving line equipment** (hot wells, cold wells, sneeze guards, utensils) | Object detection | Hot and cold wells present; sneeze guards continuous; separate utensils per dish | 1, 2, 3 |
| **Continuous barrier between kitchen and dining** | Object detection + LiDAR | Counter, half-wall, or equipment forming unbroken barrier | 2 |

#### MEDIUM Feasibility -- Achievable with Custom Work

| What to Detect | Method | Threshold / Standard | Sections |
|---------------|--------|---------------------|----------|
| **Coved base molding at floor-wall junctions** | Surface/edge detection; texture analysis | 3/8-inch radius minimum; 4 inches up wall (FDA 6-201.18) | 6 |
| **Color-coded cutting boards** | Object detection + color classification | Multiple colors present (red, yellow, green, blue, white; purple for allergen-free) | 2, 3 |
| **Equipment leg clearance** (6" floor-mounted; 4" counter-mounted) | LiDAR measurement | >=6 inches floor; >=4 inches counter (MARGINAL precision at these measurements) | 6 |
| **Blast chiller presence** | Object detection (specialized equipment) | Present if kitchen performs complex food preparation | 1, 5 |
| **Surface material and condition** | Surface classification + condition analysis | Smooth, non-porous, cleanable surfaces; flag cracks, rust, mold, deterioration | 6 |
| **Temperature monitoring equipment** (IoT sensors, wireless devices) | Object detection | Wireless sensors on cold storage units | 8 |
| **Pass-through refrigerators/warmers** | Object detection (back-to-back units in wall) | Present between kitchen and serving area | 5 |
| **Grease trap/interceptor** (if visible above-grade) | Object detection | Present near 3-compartment sink or pot sink | 7 |
| **Booster heater** adjacent to dishwasher | Object detection | Required for all high-temp commercial dishwashers | 7 |
| **Allergen-free prep zone identification** | Object detection (purple boards, separate labeled area) + OCR (signage) | Dedicated area with separate equipment and signage | 3 |
| **EpiPen storage case** | Object detection + OCR | Wall-mounted case near cafeteria; labeled and accessible | 3 |
| **Kitchen age estimation** | OCR (equipment model/serial numbers) + surface/finish analysis | Read manufacture dates; classify equipment generation | 9 |
| **Cooking model identification** | Equipment inventory detection | Combi oven + tilt skillet = scratch; retherm cabinet = heat-and-serve | 9 |

#### LOW Feasibility -- Requires Physical Inspection

| What to Assess | Why CV Cannot Detect | Inspection Method |
|---------------|---------------------|-------------------|
| **Actual food temperatures** | Temperature not visible to cameras | Calibrated probe thermometer |
| **Water temperatures** at fixtures | Not visible | Thermometer at each fixture |
| **Sanitizer concentrations** | Chemical concentration not visible | Chemical test strips/kit |
| **Equipment calibration** | Internal condition not visible | Calibration check per manufacturer |
| **Backflow prevention devices** | Usually concealed in walls/under fixtures | Plumbing inspection; annual test certificates |
| **Floor slope to drains** | Below LiDAR precision in most cases | Level measurement |
| **Grease trap condition** | Usually underground or concealed | Pumping records; physical inspection |
| **Hot water recovery rate** | Not a visual attribute | Flow test with temperature measurement |
| **Cleaning schedule compliance** | Operational practice, not physical feature | Log review; observation |
| **Staff handwashing practices** | Requires observation over time | Video monitoring or in-person observation |
| **Allergen management practices** | Operational, not physical | Observation; document review |
| **HACCP plan adequacy** | Document content, not physical feature | Document review |
| **Ventilation airflow and balance** | Not visible | Anemometer; smoke test; air balance report |

### 10.2 Measurements and Thresholds Summary

This is the quick-reference card of every food safety numeric threshold the app should check against.

#### Temperatures

| Parameter | Temperature | Source |
|-----------|-------------|--------|
| Temperature danger zone | 41--135 deg F (5--57 deg C) | FDA Food Code |
| Frozen storage | <=0 deg F (-18 deg C) | FDA / USDA |
| Refrigerated storage (cold holding) | <=41 deg F (5 deg C) | FDA Food Code |
| Dry storage (optimal) | 50--70 deg F (10--21 deg C) | USDA |
| Dry storage (maximum) | <85 deg F (29 deg C) | USDA |
| Hot holding minimum | >=135 deg F (57 deg C) | FDA Food Code |
| Cooking: poultry | >=165 deg F (74 deg C) for 15 sec | FDA 3-401.11 |
| Cooking: ground meat | >=155 deg F (68 deg C) for 17 sec | FDA 3-401.11 |
| Cooking: fish, whole cuts, eggs (immediate) | >=145 deg F (63 deg C) for 15 sec | FDA 3-401.11 |
| Reheating | >=165 deg F (74 deg C) within 2 hrs | FDA 3-403.11 |
| Cooling Stage 1 | 135 to 70 deg F in <=2 hrs | FDA 3-501.14 |
| Cooling Stage 2 | 70 to 41 deg F in <=4 more hrs (6 total) | FDA 3-501.14 |
| Handwashing water | >=85 deg F (29.4 deg C) | FDA 5-202.12 (2022) |
| 3-compartment wash | >=100 deg F (38 deg C) | FDA Food Code |
| 3-compartment rinse | >=110 deg F (43 deg C) | FDA Food Code |
| Manual hot water sanitize | >=171 deg F (77 deg C) | FDA 4-501.114 |
| Dishwasher final rinse | >=180 deg F (82 deg C) | FDA Food Code |
| Dishwasher incoming (booster) | >=140 deg F (60 deg C) | FDA Food Code |

#### Distances and Clearances (Food Safety Specific)

| Parameter | Distance | Source |
|-----------|----------|--------|
| Raw/RTE prep separation (same room) | >=4 ft (1.2 m) | Best practice; many jurisdictions |
| Hand sink to food handling area | <=25 ft (7.6 m) | Many local codes |
| Cold storage to prep area | <=15 ft (4.6 m) | Best practice |
| Cooking to hot holding | <=5 ft (1.5 m) | Best practice |
| Blast chiller to cooking line | <=10 ft (3 m) | Best practice |
| Hot equipment to cold storage | >=5 ft (1.5 m) | Best practice |
| Equipment floor clearance | >=6 in (150 mm) | FDA 4-402.11 |
| Counter-mount equipment clearance | >=4 in (100 mm) | FDA 4-402.12 |
| Coved base radius | >=3/8 in (10 mm) | FDA 6-201.18 |
| Coved base height | >=4 in (100 mm) | FDA 6-201.18 |
| Air gap (indirect waste) | >=1 in (25 mm) or 2x inlet diameter | FDA 5-202.13 |
| Grease interceptor (HGI) vertical from fixture | <=30 in (760 mm) | IPC 1003.3 |
| Grease interceptor (HGI) developed pipe length | <=60 in (1,524 mm) | IPC 1003.3 |
| Pest entry prevention | All openings >1/4 in sealed | Best practice |

#### Time Limits

| Parameter | Time Limit | Source |
|-----------|-----------|--------|
| TCS food at room temperature (with temperature control) | 4 hours maximum | FDA 3-501.19 |
| Cooling Stage 1 | 2 hours maximum | FDA 3-501.14 |
| Cooling Stage 2 | 4 additional hours | FDA 3-501.14 |
| Total cooling time | 6 hours maximum | FDA 3-501.14 |
| Reheating to 165 deg F | Within 2 hours | FDA 3-403.11 |
| Date marking (RTE TCS food held >24 hrs) | 7 days from preparation (including prep day) at <=41 deg F | FDA 3-501.17 |

### 10.3 Cross-Reference to CV Detection Palette

This section maps each food safety assessment to the specific CV capabilities cataloged in [01_CV_CAPABILITIES.md](./01_CV_CAPABILITIES.md).

| Food Safety Assessment | CV Capability Used | 01_CV Section | Feasibility |
|----------------------|-------------------|---------------|-------------|
| Handwashing sink detection and count | Object detection (Grounding DINO / YOLO) | Section 2 | HIGH |
| Sink type classification (hand vs. prep vs. 3-compartment) | Object detection + LiDAR size measurement | Sections 1, 2 | HIGH |
| Equipment spacing measurement | LiDAR spatial analysis (RoomPlan) | Section 1 | HIGH |
| Thermometer detection on equipment | Object detection | Section 2 | MEDIUM |
| Sneeze guard detection | Object detection | Section 2 | HIGH |
| Color-coded cutting board detection | Object detection + color classification | Section 2 | MEDIUM |
| Surface condition (cracks, rust, mold) | Surface/condition analysis (YOLO, U-Net) | Section 3 | HIGH (cracks 91-95%); HIGH (rust F1~0.71); HIGH (mold 87-90%) |
| Coved base molding detection | Surface/edge detection | Section 3 | MEDIUM |
| Safety signage reading | OCR (PaddleOCR / Google Vision) | Section 4 | HIGH |
| Equipment label reading (model/serial/date) | OCR | Section 4 | HIGH |
| Temperature log reading | OCR | Section 4 | MEDIUM |
| Air curtain presence | Object detection | Section 2 | MEDIUM |
| Floor drain detection | Object detection | Section 2 | MEDIUM |
| Lighting adequacy (qualitative) | Environmental assessment | Section 5 | MEDIUM (qualitative only) |
| IoT sensor detection | Object detection | Section 2 | MEDIUM |
| Kitchen age estimation from equipment | OCR (manufacture dates) + VLM reasoning | Sections 4, 7 | MEDIUM |
| Cooking model identification | Equipment inventory + VLM reasoning | Sections 2, 7 | MEDIUM |

### 10.4 Recommended Hybrid Assessment Workflow

```
FOOD SAFETY SCAN PROTOCOL

Phase 1: Spatial Scan (LiDAR)
  |-- Map all equipment positions
  |-- Measure distances between CCP locations
  |-- Identify zone boundaries (raw prep, RTE prep, cooking, holding, serving, warewashing)
  |-- Verify hand sink proximity to all work areas (<=25 ft)
  |-- Measure raw/RTE separation distance (>=4 ft)
  |-- Verify thermal zoning (hot equipment >=5 ft from cold storage)

Phase 2: Equipment Detection (Object Detection)
  |-- Inventory all sinks (hand sinks, prep sinks, 3-compartment sinks)
  |-- Detect thermometers on cold storage and hot holding units
  |-- Detect sneeze guards at serving lines
  |-- Detect color-coded cutting boards
  |-- Detect blast chiller (flag absence if scratch cooking)
  |-- Detect air curtains at exterior doors
  |-- Detect floor drains at appropriate locations
  |-- Detect chemical storage location (separate from food)
  |-- Detect EpiPen storage case near cafeteria

Phase 3: Label and Signage Reading (OCR)
  |-- Read posted inspection report (date, score)
  |-- Read handwashing signage at each hand sink
  |-- Read allergen identification cards at serving line
  |-- Read equipment model/serial numbers (for age estimation and NSF verification)
  |-- Read chemical labels (verify proper storage)
  |-- Read emergency protocol postings

Phase 4: Surface Condition Assessment
  |-- Assess floor, wall, ceiling condition (cracks, rust, mold, deterioration)
  |-- Check for coved base molding at floor-wall junctions
  |-- Assess general cleanliness (staining, discoloration)
  |-- Identify surface materials (smooth, nonporous, cleanable)

Phase 5: Analysis and Scoring
  |-- Cross-reference detected layout against HACCP CCP requirements (Section 1)
  |-- Assess cross-contamination prevention adequacy (Section 2)
  |-- Evaluate allergen management infrastructure (Section 3)
  |-- Score handwashing station adequacy (Section 4)
  |-- Evaluate temperature control equipment placement (Section 5)
  |-- Assess cleaning/sanitation design features (Section 6)
  |-- Identify plumbing food safety features visible (Section 7)
  |-- Evaluate temperature monitoring infrastructure (Section 8)
  |-- Estimate kitchen age and cooking model; generate risk score (Section 9)

Phase 6: Generate Reports
  |-- Food safety compliance scorecard (pass/flag/fail per criterion)
  |-- Physical inspection checklist for items CV cannot assess
  |-- Prioritized recommendations (violations > flags > best practice improvements)
  |-- Risk-adjusted assessment based on kitchen age and cooking model
```

---

## Sources

### HACCP and Food Safety Programs

- [FDA -- HACCP Principles & Application Guidelines](https://www.fda.gov/food/hazard-analysis-critical-control-point-haccp/haccp-principles-application-guidelines)
- [USDA FNS -- Developing a School Food Safety Program Based on the Process Approach to HACCP](https://www.fns.usda.gov/fs/developing-school-food-safety-program-based-process-approach-haccp)
- [USDA FNS -- Guidance for SFAs: HACCP for Schools (PDF)](https://fns-prod.azureedge.us/sites/default/files/Food_Safety_HACCPGuidance.pdf)
- [University of Nebraska-Lincoln -- HACCP: The Seven Principles](https://food.unl.edu/article/haccp-seven-principles/)
- [FoodDocs -- HACCP Principles](https://www.fooddocs.com/post/haccp-principles)

### FDA Food Code

- [FDA Food Code 2022 (Full Document)](https://www.fda.gov/media/164194/download)
- [FDA Food Code 2022 -- Supplement (2024)](https://www.fda.gov/media/183271/download)
- [FDA Food Code 2022 Summary of Changes](https://www.fda.gov/media/164231/download)
- [FDA Food Code 2022 Chapter 3 -- Food](https://www.c-uphd.org/documents/eh/2022-FDA-Food-Code-Chapter-3-Food.pdf)
- [FDA Food Code 2022 Chapter 4 -- Equipment, Utensils, and Linens](https://www.c-uphd.org/documents/eh/2022-FDA-Food-Code-Chapter-4-Equipment-Utensils-and-Linens.pdf)
- [FDA Food Code 2022 Chapter 6 -- Physical Facilities](https://www.c-uphd.org/documents/eh/2022-FDA-Food-Code-Chapter-6-Physical-Facilities.pdf)

### Cooking Temperatures and Cooling

- [USDA FSIS -- Safe Minimum Internal Temperature Chart](https://www.fsis.usda.gov/food-safety/safe-food-handling-and-preparation/food-safety-basics/safe-temperature-chart)
- [FoodSafety.gov -- Safe Minimum Internal Temperatures](https://www.foodsafety.gov/food-safety-charts/safe-minimum-internal-temperatures)
- [FDA -- Cooling of Cooked TCS Food Guidance](https://www.fda.gov/media/181882/download)
- [Alto-Shaam -- The Importance of Blast Chillers for Food Safety](https://www.alto-shaam.com/en/about-us/news/the-importance-of-blast-chillers-for-food-safety)
- [FES Magazine -- Blast Chillers Product Guide](https://fesmag.com/products/guide/storage-and-handling/16112-the-quarterly-product-knowledge-guide-blast-chillers)
- [State Food Safety -- Two-Stage Cooling Process](https://www.statefoodsafety.com/Resources/Resources/two-stage-cooling-process)
- [PMC -- Restaurant Food Cooling Practices](https://pmc.ncbi.nlm.nih.gov/articles/PMC5580724/)

### Cross-Contamination Prevention

- [USDA FSIS -- Preventing Cross-Contamination](https://www.fsis.usda.gov/news-events/events-meetings/food-safety-education-month-preventing-cross-contamination)
- [ServSafe -- Preventing Cross-Contamination (Sample Chapter)](https://www.servsafe.com/downloads/demos/fh/fh-sample-chapter)
- [WebstaurantStore -- Best Ways to Prevent Cross-Contamination](https://www.webstaurantstore.com/article/48/preventing-cross-contamination.html)
- [Church Mutual -- Preventing Cross-Contamination of Food in the Kitchen](https://www.churchmutual.com/resources/preventing-cross-contamination-of-food-in-the-kitchen)

### Color-Coded Equipment

- [FoodDocs -- Chopping Board Colors Guide](https://www.fooddocs.com/post/chopping-board-colours)
- [FoodDocs -- US Cutting Board Color Chart](https://www.fooddocs.com/food-safety-templates/cutting-board-color-chart)
- [KaTom -- Color-Coded Cutting Board Guide](https://www.katom.com/learning-center/color-coded-cutting-board-guide.html)
- [Vollrath -- Color-Coded Cutting Boards](https://www.vollrathfoodservice.com/products/smallwares/kitchen-essentials/cutting-boards/color-coded-cutting-boards)

### Allergen Management

- [USDA FSIS -- Food Allergies: The Big 9](https://www.fsis.usda.gov/food-safety/safe-food-handling-and-preparation/food-safety-basics/food-allergies-big-9)
- [FDA -- Food Allergies](https://www.fda.gov/food/nutrition-food-labeling-and-critical-foods/food-allergies)
- [School Nutrition Association -- Major Allergens: The Big Nine](https://schoolnutrition.org/resource/major-allergens-the-big-nine/)
- [CDC -- Managing Food Allergies in Schools: Voluntary Guidelines (PDF)](https://www.cdc.gov/school-health-conditions/media/pdfs/20_316712-a_fa_guide_508tag.pdf)
- [FARE -- Food Allergy Management in Schools (FAMS) Expert Recommendations](https://www.foodallergy.org/resources/fams-expert-recommendations-pdf)
- [AAP -- Allergy and Anaphylaxis Management in Schools](https://www.aap.org/en/patient-care/school-health/management-of-chronic-conditions-in-schools/allergy-and-anaphylaxis-management-in-schools/)
- [PMC -- Management of Food Allergy in the School Setting](https://pmc.ncbi.nlm.nih.gov/articles/PMC11250442/)
- [FDA -- Appendix 9: Allergen Cross-Contact Prevention](https://www.fda.gov/media/129670/download)
- [WebstaurantStore -- Food Service Guide to The Big 9 Allergens](https://www.webstaurantstore.com/article/22/food-allergy-overview.html)

### Handwashing

- [FDA Food Code 2022 -- Chapters 5 and 6](https://www.fda.gov/media/164194/download)
- [ANFP -- Understanding Updates to the 2022 FDA Food Code](https://www.anfponline.org/docs/default-source/legacy-docs/docs/understanding-fda-2022-food-code-updates.pdf)

### Plumbing, Backflow, and Waste

- [IPC 2021 Chapter 10 -- Traps, Interceptors, and Separators](https://codes.iccsafe.org/content/IPC2021P1/chapter-10-traps-interceptors-and-separators)
- [Northern Nevada Public Health -- Backflow Prevention in Food Establishments (PDF)](https://www.nnph.org/files/ehs/food-protection-services/Backflow-Guidance-Document.pdf)
- [Rhode Island DOH -- Air Gaps and Backflow Prevention (PDF)](https://datahealth.ri.gov/publications/factsheets/air-gaps-backflow-prevention.pdf)
- [Sonoma County -- Plumbing Guidelines for Food Facilities](https://sonomacounty.gov/health-and-human-services/health-services/divisions/public-health/environmental-health/programs-and-services/food-safety-program/food-facility-operating-permit/plumbing-guidelines-for-food-facilities)
- [WebstaurantStore -- Three Compartment Sink Rules](https://www.webstaurantstore.com/article/620/three-compartment-sink-rules.html)
- [WebstaurantStore -- Grease Trap Sizing Guide](https://www.webstaurantstore.com/guide/503/grease-trap-sizing-guide.html)

### Hot Water and Sanitation Equipment

- [Georgia DPH -- Hot Water Supply Requirements](https://dph.georgia.gov/document/document/section-k-hot-water-supply-requirements/download)
- [Maricopa County -- Hot Water Supply Requirements (PDF)](https://www.maricopa.gov/DocumentCenter/View/5888/Hot-Water-Supply-Requirements-PDF)
- [San Diego County -- Water Heater Sizing Guidelines (PDF)](https://www.sandiegocounty.gov/content/dam/sdc/deh/fhd/food/pdf/publications_waterheatersizing.pdf)
- [Reliable Water Services -- Restaurant Hot Water Requirements](https://reliablewater247.com/restaurant-hot-water-requirements/)

### Temperature Monitoring (IoT)

- [E-Control Systems -- Food Service Temperature Monitoring](https://econtrolsystems.com/solutions/food-service)
- [SmartSense by Digi -- Food Service Monitoring](https://www.smartsense.co/food-service)
- [Sonicu -- Food Safety Monitoring](https://www.sonicu.com/industries/food-safety)
- [Monnit -- Food Service Monitoring](https://www.monnit.com/applications/food-service-monitoring/)
- [Telemetry2U -- Kitchen Temperature Monitoring](https://telemetry2u.com/Documentation/food-safety-kitchen-temperature-monitoring)
- [Copeland -- Wireless Fixed Temperature Monitoring](https://www.copeland.com/en-us/products/controls-monitoring-systems/foodservice-controls-monitoring/wireless-fixed-temperature-monitoring)

### Pest Prevention

- [Powered Aire -- Air Curtains for Food Service and Insect Control](https://poweredaire.com/air-curtain/commercial/food-service-and-insect-control)
- [Quality Assurance Magazine -- Pest Prevention by Design](http://magazine.qualityassurancemag.com/article/july-2017/pest-prevention-------by-design.aspx)
- [Maricopa County -- Protection of Outer Openings Guidance (PDF)](https://www.maricopa.gov/DocumentCenter/View/42978/Protection-of-Outer-Openings-Guidance-PDF)
- [Air Door Distributors -- USDA and FDA Compliance with Air Curtains](https://www.airdoordistributors.com/blogs/air-curtains/how-you-can-stay-usda-and-fda-compliant-with-air-curtains)

### Foodborne Illness Data

- [CDC -- Burden of Foodborne Illness in the United States](https://www.cdc.gov/food-safety/php/data-research/foodborne-illness-burden/index.html)
- [GAO -- Food Safety: Status of Foodborne Illness in the US](https://www.gao.gov/assets/gao-25-107606.pdf)
- [CDC MMWR -- FoodNet Surveillance, 2022](https://www.cdc.gov/mmwr/volumes/72/wr/mm7226a1.htm)
- [CDC -- Summary of Multistate Enteric Disease Outbreaks, 2022](https://www.cdc.gov/foodborne-outbreaks/php/data-research/summary-2022.html)

### Cleaning and Sanitation Design

- [Ardor Solutions -- What the FDA Expects from Food Safe Flooring](https://www.ardorsolutions.com/food-safe-flooring-fda-approved/)
- [ResinWerks -- FDA & USDA Approved Flooring](https://www.resinwerks.com/blogs/news/fda-usda-approved-flooring)
- [Allegheny County -- Guidelines for Floor and Table Mounted Equipment (PDF)](https://www.alleghenycounty.us/files/assets/county/v/1/government/health/documents/food-safety/guidelines-for-floor-and-table-mounted-equipment.pdf)

### USDA School Meal Program Requirements

- [7 CFR 210.13 -- Facilities Management](https://www.ecfr.gov/current/title-7/subtitle-B/chapter-II/subchapter-A/part-210/subpart-C/section-210.13)
- [USDA FNS -- School Meals](https://www.fns.usda.gov/cn)
- [Institute of Child Nutrition](https://theicn.org/)

### Cross-Reference Documents in This Repository

- [01_CV_CAPABILITIES.md](./01_CV_CAPABILITIES.md) -- Detection palette and CV feasibility assessments
- [02_REGULATORY_CODE_LANDSCAPE.md](./02_REGULATORY_CODE_LANDSCAPE.md) -- FDA Food Code, USDA, NSF standards, plumbing/fire/building codes
- [03_ERGONOMICS_WORKER_SAFETY.md](./03_ERGONOMICS_WORKER_SAFETY.md) -- Workstation design, reach zones, ergonomic equipment
- [04_KITCHEN_LAYOUT_WORKFLOW.md](./04_KITCHEN_LAYOUT_WORKFLOW.md) -- Layout types, workflow sequence, traffic flow separation, serving line design
