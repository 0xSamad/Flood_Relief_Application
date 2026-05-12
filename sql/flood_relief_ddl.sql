-- ============================================================
-- Flood Relief & Shelter Tracker
-- Database Systems Lab (CSC-601) | BSSE Group B
-- Team: Abdul Samad | Zuhaib Ahmad
-- Institute of Management Sciences, Peshawar
-- ============================================================

CREATE DATABASE IF NOT EXISTS flood_relief_db;
USE flood_relief_db;

-- ============================================================
-- TABLE 1: users
-- Stores all system users (admins, NGO reps, shelter managers)
-- ============================================================
CREATE TABLE IF NOT EXISTS users (
    id              INT AUTO_INCREMENT PRIMARY KEY,
    name            VARCHAR(100)    NOT NULL,
    email           VARCHAR(150)    NOT NULL UNIQUE,
    password_hash   VARCHAR(255)    NOT NULL,
    role            ENUM('admin', 'manager', 'ngo_rep', 'viewer') NOT NULL DEFAULT 'viewer',
    city            VARCHAR(100)    NOT NULL,
    phone           VARCHAR(20),
    created_at      DATETIME        NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- ============================================================
-- TABLE 2: shelters
-- Tracks all flood relief shelters and their capacity
-- ============================================================
CREATE TABLE IF NOT EXISTS shelters (
    id                  INT AUTO_INCREMENT PRIMARY KEY,
    name                VARCHAR(150)    NOT NULL,
    city                VARCHAR(100)    NOT NULL,
    province            VARCHAR(100)    NOT NULL,
    latitude            DECIMAL(9,6),
    longitude           DECIMAL(9,6),
    capacity            INT             NOT NULL CHECK (capacity > 0),
    current_occupancy   INT             NOT NULL DEFAULT 0 CHECK (current_occupancy >= 0),
    status              ENUM('open', 'full', 'closed') NOT NULL DEFAULT 'open',
    managed_by          INT,
    CONSTRAINT fk_shelter_manager
        FOREIGN KEY (managed_by) REFERENCES users(id)
        ON DELETE SET NULL ON UPDATE CASCADE
);

CREATE INDEX idx_shelters_managed_by ON shelters(managed_by);
CREATE INDEX idx_shelters_status     ON shelters(status);

-- ============================================================
-- TABLE 3: evacuees
-- Records individuals housed in shelters
-- ============================================================
CREATE TABLE IF NOT EXISTS evacuees (
    id              INT AUTO_INCREMENT PRIMARY KEY,
    shelter_id      INT             NOT NULL,
    name            VARCHAR(100)    NOT NULL,
    age             INT             CHECK (age >= 0 AND age <= 120),
    gender          ENUM('male', 'female', 'other'),
    home_district   VARCHAR(100)    NOT NULL,
    arrived_at      DATETIME        NOT NULL DEFAULT CURRENT_TIMESTAMP,
    health_status   ENUM('healthy', 'injured', 'critical', 'recovering') NOT NULL DEFAULT 'healthy',
    CONSTRAINT fk_evacuee_shelter
        FOREIGN KEY (shelter_id) REFERENCES shelters(id)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE INDEX idx_evacuees_shelter_id ON evacuees(shelter_id);

-- ============================================================
-- TABLE 4: supplies
-- Tracks inventory of supplies at each shelter
-- ============================================================
CREATE TABLE IF NOT EXISTS supplies (
    id              INT AUTO_INCREMENT PRIMARY KEY,
    shelter_id      INT             NOT NULL,
    item_name       VARCHAR(150)    NOT NULL,
    category        ENUM('food', 'medicine', 'clothing', 'sanitation', 'other') NOT NULL,
    quantity        INT             NOT NULL DEFAULT 0 CHECK (quantity >= 0),
    last_updated    DATETIME        NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT fk_supply_shelter
        FOREIGN KEY (shelter_id) REFERENCES shelters(id)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE INDEX idx_supplies_shelter_id ON supplies(shelter_id);

-- ============================================================
-- TABLE 5: ngos
-- Non-governmental organizations providing relief
-- ============================================================
CREATE TABLE IF NOT EXISTS ngos (
    id              INT AUTO_INCREMENT PRIMARY KEY,
    name            VARCHAR(150)    NOT NULL UNIQUE,
    contact_person  VARCHAR(100)    NOT NULL,
    phone           VARCHAR(20)     NOT NULL,
    email           VARCHAR(150),
    areas_covered   TEXT            NOT NULL
);

-- ============================================================
-- TABLE 6: relief_requests
-- Requests made by shelters to NGOs for specific supplies
-- ============================================================
CREATE TABLE IF NOT EXISTS relief_requests (
    id                  INT AUTO_INCREMENT PRIMARY KEY,
    shelter_id          INT             NOT NULL,
    ngo_id              INT             NOT NULL,
    item_needed         VARCHAR(150)    NOT NULL,
    quantity_needed     INT             NOT NULL CHECK (quantity_needed > 0),
    urgency             ENUM('low', 'medium', 'high', 'critical') NOT NULL DEFAULT 'medium',
    status              ENUM('pending', 'approved', 'fulfilled', 'rejected') NOT NULL DEFAULT 'pending',
    created_at          DATETIME        NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_request_shelter
        FOREIGN KEY (shelter_id) REFERENCES shelters(id)
        ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_request_ngo
        FOREIGN KEY (ngo_id) REFERENCES ngos(id)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE INDEX idx_relief_requests_shelter_id ON relief_requests(shelter_id);
CREATE INDEX idx_relief_requests_ngo_id     ON relief_requests(ngo_id);

-- ============================================================
-- TABLE 7: incidents
-- Logs flood incidents reported by users
-- ============================================================
CREATE TABLE IF NOT EXISTS incidents (
    id              INT AUTO_INCREMENT PRIMARY KEY,
    district        VARCHAR(100)    NOT NULL,
    province        VARCHAR(100)    NOT NULL,
    severity        ENUM('low', 'moderate', 'high', 'catastrophic') NOT NULL,
    description     TEXT,
    latitude        DECIMAL(9,6),
    longitude       DECIMAL(9,6),
    reported_at     DATETIME        NOT NULL DEFAULT CURRENT_TIMESTAMP,
    reported_by     INT,
    CONSTRAINT fk_incident_reporter
        FOREIGN KEY (reported_by) REFERENCES users(id)
        ON DELETE SET NULL ON UPDATE CASCADE
);

CREATE INDEX idx_incidents_reported_by ON incidents(reported_by);
CREATE INDEX idx_incidents_severity    ON incidents(severity);

-- ============================================================
-- END OF DDL SCRIPT
-- Run this file in MySQL Workbench to set up the schema.
-- ============================================================
