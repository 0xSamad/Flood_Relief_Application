# Dataflow Documentation
## Flood Relief & Shelter Tracker

**Course:** Database Systems Lab (CSC-601)  
**Group:** BSSE Group B — Abdul Samad | Zuhaib Ahmad  
**Milestone:** 3 — Dataset Preprocessing & Dataflow  

---

## 1. Where Data Enters the System (Input Phase)
Data primarily enters the Flood Relief & Shelter Tracker through three main user roles:

1. **Admins/System Managers (`users` table):** They register the physical shelters into the system (`shelters` table), specifying the location, capacity, and assigning a manager to oversee it.
2. **Shelter Managers (`users` table):** Once a shelter is active, managers start logging the arrival of affected individuals (`evacuees` table). They also record the inventory of items they currently hold (`supplies` table). 
3. **General Public/Field Workers (`users` table):** Individuals in the field can report new flooding events, property damage, or emergency situations (`incidents` table). This provides real-time situational awareness.
4. **NGO Representatives (`ngos` table):** Non-Governmental Organizations are registered in the system so that shelters have a directory of available aid providers.

---

## 2. How Data Moves Through the Database (Processing & Dependencies)
The core movement of data in the system revolves around **Shelters** as the central hub:

*   **Evacuee Allocation:** The `evacuees` table strictly depends on the `shelters` table. An evacuee cannot exist in the system without being assigned to a valid `shelter_id`. When an evacuee arrives, the `current_occupancy` of the respective shelter is expected to increase.
*   **Supply Tracking:** The `supplies` table also depends on the `shelters` table. As supplies are consumed by the evacuees, the `quantity` in the `supplies` table must be updated.
*   **Generating Relief Requests:** When a shelter manager notices that their `supplies` are running low (e.g., food or medicine shortage), they generate a request in the `relief_requests` table.
*   **Connecting Needs with Aid:** The `relief_requests` table acts as the critical bridge (junction) linking the `shelters` table (who needs help) and the `ngos` table (who can provide help). The request tracks the `status` (pending → approved → fulfilled), moving the data lifecycle forward.

---

## 3. What Comes Out of the System (Output Phase)
The system aggregates the input and processes it to generate actionable outputs for decision-makers:

1. **Capacity Reports:** Query results showing which shelters are `full` versus `open`, allowing authorities to redirect new evacuees to shelters with available capacity.
2. **Incident Heatmaps:** Exporting the `latitude` and `longitude` from the `incidents` table allows the system (via Leaflet.js map integration) to visually plot the most affected districts.
3. **Supply Shortage Alerts:** Reports generated from the `relief_requests` table showing 'critical' urgency items that remain 'pending', enabling NGOs to prioritize their deliveries.
4. **Demographic Summaries:** Aggregated queries on the `evacuees` table (grouping by `age`, `gender`, and `health_status`) to ensure appropriate medical supplies and facilities are dispatched.
