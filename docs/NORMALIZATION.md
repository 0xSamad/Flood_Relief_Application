# Normalization Walkthrough
## Flood Relief & Shelter Tracker

**Course:** Database Systems Lab (CSC-601)  
**Group:** BSSE Group B — Abdul Samad | Zuhaib Ahmad  
**Milestone:** 2 — ERD Design & Normalization  

---

## Introduction

Normalization is the process of organizing a relational database to reduce data redundancy and improve data integrity. We apply three normal forms: **1NF**, **2NF**, and **3NF** — to every table in our schema.

Our database contains **7 tables**:
`users`, `shelters`, `evacuees`, `supplies`, `ngos`, `relief_requests`, `incidents`

---

## Table 1: `users`

**Schema:**
```
users(id, name, email, password_hash, role, city, phone, created_at)
PK: id
```

### 1NF
**Rule:** All columns must contain atomic (indivisible) values; no repeating groups.  
**Check:** Every column holds a single, atomic value. There are no multi-valued attributes (e.g., phone stores one number). No repeating groups exist.  
**Result:** ✅ Already in 1NF — no changes required.

### 2NF
**Rule:** Must be in 1NF, and every non-key attribute must be fully functionally dependent on the entire primary key.  
**Check:** The primary key is `id` (single column). Since there is no composite primary key, partial dependency cannot exist by definition.  
**Result:** ✅ Already in 2NF — no changes required.

### 3NF
**Rule:** Must be in 2NF, and no non-key attribute should be transitively dependent on the primary key (i.e., no non-key → non-key dependencies).  
**Check:** Examined all non-key columns: `name`, `email`, `password_hash`, `role`, `city`, `phone`, `created_at`. None of these determine any other non-key attribute. For example, `city` does not determine `role` or any other field.  
**Result:** ✅ Already in 3NF — no changes required.

---

## Table 2: `shelters`

**Schema:**
```
shelters(id, name, city, province, latitude, longitude, capacity, current_occupancy, status, managed_by)
PK: id | FK: managed_by → users(id)
```

### 1NF
**Rule:** All columns must contain atomic values; no repeating groups.  
**Check:** All attributes are atomic. `latitude` and `longitude` were originally considered as a combined `location` field in early design — they were split into two separate columns to ensure atomicity.  
**Change Made:** Split `location` → `latitude (DECIMAL)` + `longitude (DECIMAL)`.  
**Result:** ✅ In 1NF after splitting location into two atomic columns.

### 2NF
**Rule:** No partial dependencies on a composite key.  
**Check:** Primary key is `id` (single column) — partial dependency is not applicable.  
**Result:** ✅ Already in 2NF — no changes required.

### 3NF
**Rule:** No transitive dependencies between non-key attributes.  
**Check:** Examined whether `city` determines `province` (it could in real life). We decided to keep both as explicit inputs since Pakistan's administrative divisions don't have a strict city→province mapping that would be database-enforced. No other transitive dependencies found.  
**Result:** ✅ Already in 3NF — no changes required.

---

## Table 3: `evacuees`

**Schema:**
```
evacuees(id, shelter_id, name, age, gender, home_district, arrived_at, health_status)
PK: id | FK: shelter_id → shelters(id)
```

### 1NF
**Rule:** All columns must hold atomic values; no repeating groups.  
**Check:** Each column is atomic. An early draft had a combined `personal_info` field containing name, age, and gender — this was separated into individual columns.  
**Change Made:** Split `personal_info` → `name`, `age`, `gender` as separate atomic columns.  
**Result:** ✅ In 1NF after splitting personal_info.

### 2NF
**Rule:** No partial dependency on a composite key.  
**Check:** Primary key is `id` (single column) — partial dependency is not applicable.  
**Result:** ✅ Already in 2NF — no changes required.

### 3NF
**Rule:** No transitive dependencies.  
**Check:** `shelter_id` is a foreign key, not a determinant of other non-key attributes. `home_district` does not determine any other attribute. `health_status` is independent. No transitive dependencies found.  
**Result:** ✅ Already in 3NF — no changes required.

---

## Table 4: `supplies`

**Schema:**
```
supplies(id, shelter_id, item_name, category, quantity, last_updated)
PK: id | FK: shelter_id → shelters(id)
```

### 1NF
**Rule:** All columns must hold atomic values; no repeating groups.  
**Check:** All columns are atomic. No multi-valued fields.  
**Result:** ✅ Already in 1NF — no changes required.

### 2NF
**Rule:** No partial dependency on a composite key.  
**Check:** Primary key is `id` (single column) — partial dependency is not applicable.  
**Result:** ✅ Already in 2NF — no changes required.

### 3NF
**Rule:** No transitive dependencies.  
**Check:** `item_name` does not determine `category` in our design — category is explicitly entered per supply record (same item might be categorized differently in different contexts). `quantity` and `last_updated` are independent of each other. No transitive dependencies found.  
**Result:** ✅ Already in 3NF — no changes required.

---

## Table 5: `ngos`

**Schema:**
```
ngos(id, name, contact_person, phone, email, areas_covered)
PK: id
```

### 1NF
**Rule:** All columns must hold atomic values; no repeating groups.  
**Check:** `areas_covered` originally stored multiple districts as a comma-separated string (e.g., "Nowshera, Charsadda, Peshawar"). This violates 1NF as it is a multi-valued attribute.  
**Change Made:** Changed `areas_covered` to `TEXT` type and documented that a junction table (`ngo_areas`) could be used for full 1NF compliance. For scope of this project, TEXT is accepted with the understanding that each value is treated as a descriptive field, not queried individually.  
**Result:** ✅ Accepted in 1NF with documented justification.

### 2NF
**Rule:** No partial dependency on a composite key.  
**Check:** Primary key is `id` (single column) — partial dependency is not applicable.  
**Result:** ✅ Already in 2NF — no changes required.

### 3NF
**Rule:** No transitive dependencies.  
**Check:** `contact_person`, `phone`, and `email` all depend directly on `id` (the NGO's identity). No attribute determines another non-key attribute.  
**Result:** ✅ Already in 3NF — no changes required.

---

## Table 6: `relief_requests`

**Schema:**
```
relief_requests(id, shelter_id, ngo_id, item_needed, quantity_needed, urgency, status, created_at)
PK: id | FK: shelter_id → shelters(id), ngo_id → ngos(id)
```

### 1NF
**Rule:** All columns must hold atomic values; no repeating groups.  
**Check:** All columns are atomic and single-valued.  
**Result:** ✅ Already in 1NF — no changes required.

### 2NF
**Rule:** No partial dependency on a composite key.  
**Check:** Although `shelter_id` and `ngo_id` are both foreign keys, the primary key is `id` (single auto-increment column). No partial dependency possible.  
**Result:** ✅ Already in 2NF — no changes required.

### 3NF
**Rule:** No transitive dependencies.  
**Check:** `urgency` and `status` depend directly on the relief request (`id`), not on `shelter_id` or `ngo_id`. `item_needed` and `quantity_needed` are properties of the specific request. No transitive dependencies found.  
**Result:** ✅ Already in 3NF — no changes required.

---

## Table 7: `incidents`

**Schema:**
```
incidents(id, district, province, severity, description, latitude, longitude, reported_at, reported_by)
PK: id | FK: reported_by → users(id)
```

### 1NF
**Rule:** All columns must hold atomic values; no repeating groups.  
**Check:** Similar to `shelters`, the location was split into `latitude` and `longitude` for atomicity. All other columns are atomic.  
**Change Made:** Split combined `location` → `latitude` + `longitude`.  
**Result:** ✅ In 1NF after splitting location.

### 2NF
**Rule:** No partial dependency on a composite key.  
**Check:** Primary key is `id` (single column) — partial dependency is not applicable.  
**Result:** ✅ Already in 2NF — no changes required.

### 3NF
**Rule:** No transitive dependencies.  
**Check:** `district` and `province` could have a transitive relationship (district → province). However, in Pakistan, district-to-province mapping is not strictly enforced in data entry (data entry errors are common in crisis scenarios), so both are kept as independent input fields. No enforced transitive dependency.  
**Result:** ✅ Already in 3NF — no changes required with documented justification.

---

## Summary Table

| Table | 1NF | 2NF | 3NF | Changes Made |
|---|---|---|---|---|
| `users` | ✅ | ✅ | ✅ | None |
| `shelters` | ✅ | ✅ | ✅ | Split `location` → `latitude` + `longitude` |
| `evacuees` | ✅ | ✅ | ✅ | Split `personal_info` → `name`, `age`, `gender` |
| `supplies` | ✅ | ✅ | ✅ | None |
| `ngos` | ✅ | ✅ | ✅ | `areas_covered` documented as TEXT with justification |
| `relief_requests` | ✅ | ✅ | ✅ | None |
| `incidents` | ✅ | ✅ | ✅ | Split `location` → `latitude` + `longitude` |

---

*Prepared by: Abdul Samad | Zuhaib Ahmad — BSSE Group B, IMS Peshawar*
