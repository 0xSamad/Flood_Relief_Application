# Flood Relief & Shelter Tracker

**Course:** Database Systems Lab (CSC-601)  
**Instructor:** Ali Hassan  
**Group:** BSSE Group B  
**Team Members:** Abdul Samad | Zuhaib Ahmad  
**Institution:** Institute of Management Sciences, Peshawar  
**Submission:** April–May 2026  

---

## Project Overview

The **Flood Relief & Shelter Tracker** is a database-driven web application designed to coordinate flood disaster response in Pakistan. It enables administrators, shelter managers, and NGO representatives to track shelters, evacuees, supply inventories, relief requests, and flood incidents — all in one centralized system.

**Tech Stack:**  
- Backend: Python (Flask)  
- Database: MySQL (MySQL Workbench)  
- Mapping: Leaflet.js & OpenStreetMap  

---

## Database Schema (7 Core Tables)

| Table | Description |
|---|---|
| `users` | System users — admins, managers, NGO reps |
| `shelters` | Flood shelters with capacity and location |
| `evacuees` | Individuals housed in shelters |
| `supplies` | Inventory of supplies per shelter |
| `ngos` | NGOs providing relief support |
| `relief_requests` | Shelter-to-NGO requests for supplies |
| `incidents` | Reported flood incidents with severity |

---

## Repository Structure

```
Flood_Relief_Application/
│
├── README.md                     ← This file
├── ERD/
│   └── flood_relief_erd.png      ← Entity Relationship Diagram (v1.1)
│
├── docs/
│   └── NORMALIZATION.md          ← Normalization walkthrough (1NF → 3NF)
│
├── sql/
│   └── flood_relief_ddl.sql      ← DDL: CREATE TABLE scripts (M4)
│
└── data/                         ← Synthetic CSV files (M3, coming soon)
```

---

## Milestone Progress

| Milestone | Description | Status |
|---|---|---|
| M1 | ERD Design & Initial Schema | ✅ Complete |
| M2 | Normalization (1NF → 3NF) | ✅ Complete |
| M3 | Dataset Preprocessing & CSVs | 🔄 In Progress |
| M4 | DDL Scripts & MySQL Setup | ✅ Complete |
| M5 | Data Population & Validation | ⬜ Pending |

---

## Entity Relationship Diagram

The ERD (v1.1) shows all seven core tables with Primary Keys (PK), Foreign Keys (FK), and one-to-many relationships. The schema is normalized to **Third Normal Form (3NF)**.

See: [`ERD/flood_relief_erd.png`](ERD/flood_relief_erd.png)

---

## How to Set Up the Database

1. Open **MySQL Workbench** and connect to your local server
2. Go to **File → Open SQL Script**
3. Open `sql/flood_relief_ddl.sql`
4. Press `Ctrl+Shift+Enter` to execute
5. The `flood_relief_db` database and all 7 tables will be created

---

*Submitted by: Abdul Samad | Zuhaib Ahmad — BSSE Group B, IMS Peshawar*
