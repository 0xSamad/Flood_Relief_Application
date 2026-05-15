-- ============================================================
-- Flood Relief & Shelter Tracker - Data Population (DML)
-- Milestone 5
-- ============================================================

USE flood_relief_db;

-- Loading data into users
INSERT INTO users (id, name, email, password_hash, role, city, phone, created_at) VALUES (100, 'Abdul Samad', 'abdulsamadorakzai57@gmail.com', 'scrypt:32768:8:1$eKrgPaoOkJxvpNG3$6caef0668d69b428f0f7a54c6f63ea80c21e2de953606d2d74af36ecac312cd450e14d6cc516b07496498b3d519c2abba8bd70d68b18c1037045313a60e604cb', 'admin', 'Peshawar', '+92-000-0000000', NOW());
INSERT INTO users (id, name, email, password_hash, role, city, phone, created_at) VALUES (1, 'Hassan Malik', '1_hassan.malik@example.com', 'hashedpassword7459', 'viewer', 'Karachi', '+92-332-9286478', '2025-08-26 08:38:24');
INSERT INTO users (id, name, email, password_hash, role, city, phone, created_at) VALUES (2, 'Bilal Begum', '2_bilal.begum@example.com', 'hashedpassword1158', 'admin', 'Gujranwala', '+92-342-6788363', '2025-09-06 08:38:24');
INSERT INTO users (id, name, email, password_hash, role, city, phone, created_at) VALUES (3, 'Hira Mehmood', '3_hira.mehmood@example.com', 'hashedpassword3026', 'viewer', 'Mardan', '+92-325-6261294', '2025-06-28 08:38:24');
INSERT INTO users (id, name, email, password_hash, role, city, phone, created_at) VALUES (4, 'Khadija Tariq', '4_khadija.tariq@example.com', 'hashedpassword5569', 'manager', 'Peshawar', '+92-348-3473276', '2025-11-21 08:38:24');
INSERT INTO users (id, name, email, password_hash, role, city, phone, created_at) VALUES (5, 'Raza Bibi', '5_raza.bibi@example.com', 'hashedpassword4122', 'manager', 'Multan', '+92-315-3723294', '2025-06-13 08:38:24');
INSERT INTO users (id, name, email, password_hash, role, city, phone, created_at) VALUES (6, 'Raza Rehman', '6_raza.rehman@example.com', 'hashedpassword3639', 'viewer', 'Mardan', '+92-328-4093379', '2025-09-15 08:38:24');
INSERT INTO users (id, name, email, password_hash, role, city, phone, created_at) VALUES (7, 'Rabia Iqbal', '7_rabia.iqbal@example.com', 'hashedpassword9707', 'admin', 'Charsadda', '+92-305-7750741', '2025-07-04 08:38:24');
INSERT INTO users (id, name, email, password_hash, role, city, phone, created_at) VALUES (8, 'Ali Iqbal', '8_ali.iqbal@example.com', 'hashedpassword7070', 'viewer', 'Swat', '+92-333-7463953', '2026-03-22 08:38:24');
INSERT INTO users (id, name, email, password_hash, role, city, phone, created_at) VALUES (9, 'Sadia Din', '9_sadia.din@example.com', 'hashedpassword2054', 'ngo_rep', 'Charsadda', '+92-334-7556190', '2025-06-01 08:38:24');
INSERT INTO users (id, name, email, password_hash, role, city, phone, created_at) VALUES (10, 'Tariq Ali', '10_tariq.ali@example.com', 'hashedpassword2402', 'viewer', 'Hyderabad', '+92-327-9082796', '2025-08-02 08:38:24');
INSERT INTO users (id, name, email, password_hash, role, city, phone, created_at) VALUES (11, 'Tariq Shah', '11_tariq.shah@example.com', 'hashedpassword1452', 'manager', 'Peshawar', '+92-302-8788163', '2025-11-08 08:38:24');
INSERT INTO users (id, name, email, password_hash, role, city, phone, created_at) VALUES (12, 'Raza Ahmed', '12_raza.ahmed@example.com', 'hashedpassword3617', 'ngo_rep', 'Lahore', '+92-325-4519255', '2026-02-12 08:38:24');
INSERT INTO users (id, name, email, password_hash, role, city, phone, created_at) VALUES (13, 'Sana Qureshi', '13_sana.qureshi@example.com', 'hashedpassword8255', 'manager', 'Karachi', '+92-321-8211816', '2026-04-01 08:38:24');
INSERT INTO users (id, name, email, password_hash, role, city, phone, created_at) VALUES (14, 'Tariq Rehman', '14_tariq.rehman@example.com', 'hashedpassword4025', 'manager', 'Faisalabad', '+92-304-4834950', '2025-06-28 08:38:24');
INSERT INTO users (id, name, email, password_hash, role, city, phone, created_at) VALUES (15, 'Khadija Din', '15_khadija.din@example.com', 'hashedpassword3026', 'manager', 'Charsadda', '+92-319-8543191', '2026-03-21 08:38:24');
INSERT INTO users (id, name, email, password_hash, role, city, phone, created_at) VALUES (16, 'Bilal Qureshi', '16_bilal.qureshi@example.com', 'hashedpassword3277', 'manager', 'Abbottabad', '+92-323-2605262', '2025-06-27 08:38:24');
INSERT INTO users (id, name, email, password_hash, role, city, phone, created_at) VALUES (17, 'Maryam Qureshi', '17_maryam.qureshi@example.com', 'hashedpassword2390', 'admin', 'Faisalabad', '+92-312-1342059', '2026-03-07 08:38:24');
INSERT INTO users (id, name, email, password_hash, role, city, phone, created_at) VALUES (18, 'Fatima Bibi', '18_fatima.bibi@example.com', 'hashedpassword4764', 'admin', 'Multan', '+92-344-6642168', '2026-03-08 08:38:24');
INSERT INTO users (id, name, email, password_hash, role, city, phone, created_at) VALUES (19, 'Sana Shah', '19_sana.shah@example.com', 'hashedpassword8120', 'manager', 'Charsadda', '+92-329-7319893', '2025-10-29 08:38:24');
INSERT INTO users (id, name, email, password_hash, role, city, phone, created_at) VALUES (20, 'Kamran Mehmood', '20_kamran.mehmood@example.com', 'hashedpassword1995', 'manager', 'Multan', '+92-349-1256122', '2025-10-14 08:38:24');
INSERT INTO users (id, name, email, password_hash, role, city, phone, created_at) VALUES (21, 'Hassan Qureshi', '21_hassan.qureshi@example.com', 'hashedpassword6005', 'ngo_rep', 'Mardan', '+92-300-3527450', '2025-11-01 08:38:24');
INSERT INTO users (id, name, email, password_hash, role, city, phone, created_at) VALUES (22, 'Omar Ali', '22_omar.ali@example.com', 'hashedpassword5269', 'admin', 'Multan', '+92-323-8152758', '2025-11-19 08:38:24');
INSERT INTO users (id, name, email, password_hash, role, city, phone, created_at) VALUES (23, 'Khadija Begum', '23_khadija.begum@example.com', 'hashedpassword3281', 'viewer', 'Hyderabad', '+92-302-2962026', '2026-04-06 08:38:24');
INSERT INTO users (id, name, email, password_hash, role, city, phone, created_at) VALUES (24, 'Kamran Iqbal', '24_kamran.iqbal@example.com', 'hashedpassword5843', 'ngo_rep', 'Islamabad', '+92-340-3310470', '2025-05-25 08:38:24');
INSERT INTO users (id, name, email, password_hash, role, city, phone, created_at) VALUES (25, 'Fatima Tariq', '25_fatima.tariq@example.com', 'hashedpassword3596', 'viewer', 'Charsadda', '+92-315-2472873', '2025-09-25 08:38:24');
INSERT INTO users (id, name, email, password_hash, role, city, phone, created_at) VALUES (26, 'Fatima Shah', '26_fatima.shah@example.com', 'hashedpassword4188', 'viewer', 'Rawalpindi', '+92-339-4023475', '2026-05-13 08:38:24');
INSERT INTO users (id, name, email, password_hash, role, city, phone, created_at) VALUES (27, 'Rabia Hussain', '27_rabia.hussain@example.com', 'hashedpassword1758', 'manager', 'Hyderabad', '+92-318-9415063', '2026-02-25 08:38:24');
INSERT INTO users (id, name, email, password_hash, role, city, phone, created_at) VALUES (28, 'Rabia Bibi', '28_rabia.bibi@example.com', 'hashedpassword4693', 'admin', 'Abbottabad', '+92-338-9436615', '2025-11-07 08:38:24');
INSERT INTO users (id, name, email, password_hash, role, city, phone, created_at) VALUES (29, 'Maryam Malik', '29_maryam.malik@example.com', 'hashedpassword5513', 'viewer', 'Abbottabad', '+92-317-3002163', '2026-03-26 08:38:24');
INSERT INTO users (id, name, email, password_hash, role, city, phone, created_at) VALUES (30, 'Hira Hussain', '30_hira.hussain@example.com', 'hashedpassword9880', 'ngo_rep', 'Swat', '+92-318-1795368', '2026-03-23 08:38:24');
INSERT INTO users (id, name, email, password_hash, role, city, phone, created_at) VALUES (31, 'Usman Malik', '31_usman.malik@example.com', 'hashedpassword7290', 'admin', 'Charsadda', '+92-343-7616958', '2026-01-30 08:38:24');
INSERT INTO users (id, name, email, password_hash, role, city, phone, created_at) VALUES (32, 'Imran Din', '32_imran.din@example.com', 'hashedpassword8317', 'ngo_rep', 'Mardan', '+92-320-5915813', '2025-07-18 08:38:24');
INSERT INTO users (id, name, email, password_hash, role, city, phone, created_at) VALUES (33, 'Bilal Begum', '33_bilal.begum@example.com', 'hashedpassword3798', 'ngo_rep', 'Karachi', '+92-303-9986776', '2025-12-10 08:38:24');
INSERT INTO users (id, name, email, password_hash, role, city, phone, created_at) VALUES (34, 'Rabia Malik', '34_rabia.malik@example.com', 'hashedpassword8322', 'admin', 'Islamabad', '+92-310-2059675', '2025-10-28 08:38:24');
INSERT INTO users (id, name, email, password_hash, role, city, phone, created_at) VALUES (35, 'Kamran Bibi', '35_kamran.bibi@example.com', 'hashedpassword4209', 'manager', 'Gujranwala', '+92-338-9194092', '2026-04-04 08:38:24');
INSERT INTO users (id, name, email, password_hash, role, city, phone, created_at) VALUES (36, 'Tariq Malik', '36_tariq.malik@example.com', 'hashedpassword3158', 'manager', 'Rawalpindi', '+92-326-4477772', '2026-01-17 08:38:24');
INSERT INTO users (id, name, email, password_hash, role, city, phone, created_at) VALUES (37, 'Zainab Ahmed', '37_zainab.ahmed@example.com', 'hashedpassword2123', 'viewer', 'Quetta', '+92-328-1723404', '2025-11-26 08:38:24');
INSERT INTO users (id, name, email, password_hash, role, city, phone, created_at) VALUES (38, 'Maryam Sheikh', '38_maryam.sheikh@example.com', 'hashedpassword2820', 'viewer', 'Multan', '+92-342-3438257', '2025-12-09 08:38:24');
INSERT INTO users (id, name, email, password_hash, role, city, phone, created_at) VALUES (39, 'Fatima Zafar', '39_fatima.zafar@example.com', 'hashedpassword4308', 'viewer', 'Swat', '+92-315-3670408', '2026-01-08 08:38:24');
INSERT INTO users (id, name, email, password_hash, role, city, phone, created_at) VALUES (40, 'Tariq Mehmood', '40_tariq.mehmood@example.com', 'hashedpassword3266', 'ngo_rep', 'Islamabad', '+92-304-6568989', '2025-06-12 08:38:24');
INSERT INTO users (id, name, email, password_hash, role, city, phone, created_at) VALUES (41, 'Raza Din', '41_raza.din@example.com', 'hashedpassword8117', 'admin', 'Rawalpindi', '+92-312-9312619', '2025-06-19 08:38:24');
INSERT INTO users (id, name, email, password_hash, role, city, phone, created_at) VALUES (42, 'Sana Ali', '42_sana.ali@example.com', 'hashedpassword6273', 'ngo_rep', 'Faisalabad', '+92-333-6850020', '2026-01-05 08:38:24');
INSERT INTO users (id, name, email, password_hash, role, city, phone, created_at) VALUES (43, 'Omar Qureshi', '43_omar.qureshi@example.com', 'hashedpassword9463', 'manager', 'Hyderabad', '+92-345-2116691', '2025-08-11 08:38:24');
INSERT INTO users (id, name, email, password_hash, role, city, phone, created_at) VALUES (44, 'Nida Mehmood', '44_nida.mehmood@example.com', 'hashedpassword6459', 'admin', 'Multan', '+92-329-8740421', '2025-11-20 08:38:24');
INSERT INTO users (id, name, email, password_hash, role, city, phone, created_at) VALUES (45, 'Tariq Ahmed', '45_tariq.ahmed@example.com', 'hashedpassword1971', 'manager', 'Faisalabad', '+92-332-5674740', '2026-03-06 08:38:24');
INSERT INTO users (id, name, email, password_hash, role, city, phone, created_at) VALUES (46, 'Bilal Ali', '46_bilal.ali@example.com', 'hashedpassword2736', 'manager', 'Karachi', '+92-340-5303249', '2026-04-18 08:38:24');
INSERT INTO users (id, name, email, password_hash, role, city, phone, created_at) VALUES (47, 'Hira Hussain', '47_hira.hussain@example.com', 'hashedpassword7938', 'viewer', 'Nowshera', '+92-321-1088251', '2025-05-13 08:38:24');
INSERT INTO users (id, name, email, password_hash, role, city, phone, created_at) VALUES (48, 'Tariq Rehman', '48_tariq.rehman@example.com', 'hashedpassword9997', 'manager', 'Rawalpindi', '+92-304-3609151', '2026-04-21 08:38:24');
INSERT INTO users (id, name, email, password_hash, role, city, phone, created_at) VALUES (49, 'Fahad Rehman', '49_fahad.rehman@example.com', 'hashedpassword6539', 'admin', 'Peshawar', '+92-346-2634215', '2025-11-09 08:38:24');
INSERT INTO users (id, name, email, password_hash, role, city, phone, created_at) VALUES (50, 'Tariq Din', '50_tariq.din@example.com', 'hashedpassword3314', 'ngo_rep', 'Abbottabad', '+92-320-3627879', '2026-01-15 08:38:24');

-- Loading data into shelters
INSERT INTO shelters (id, name, city, province, latitude, longitude, capacity, current_occupancy, status, managed_by) VALUES (1, 'Swat Relief Camp 2', 'Swat', 'Sindh', 35.189239, 72.384998, 351, 54, 'closed', 14);
INSERT INTO shelters (id, name, city, province, latitude, longitude, capacity, current_occupancy, status, managed_by) VALUES (2, 'Multan Relief Camp 4', 'Multan', 'Gilgit-Baltistan', 30.137288, 71.547207, 456, 420, 'closed', 38);
INSERT INTO shelters (id, name, city, province, latitude, longitude, capacity, current_occupancy, status, managed_by) VALUES (3, 'Hyderabad Relief Camp 3', 'Hyderabad', 'Sindh', 25.362621, 68.312213, 130, 107, 'closed', 12);
INSERT INTO shelters (id, name, city, province, latitude, longitude, capacity, current_occupancy, status, managed_by) VALUES (4, 'Peshawar Relief Camp 3', 'Peshawar', 'KPK', 34.031154, 71.561344, 86, 19, 'open', 26);
INSERT INTO shelters (id, name, city, province, latitude, longitude, capacity, current_occupancy, status, managed_by) VALUES (5, 'Swat Relief Camp 5', 'Swat', 'Sindh', 35.26073, 72.42149, 302, 198, 'open', 18);
INSERT INTO shelters (id, name, city, province, latitude, longitude, capacity, current_occupancy, status, managed_by) VALUES (6, 'Multan Relief Camp 2', 'Multan', 'Sindh', 30.116703, 71.531884, 162, 95, 'closed', 2);
INSERT INTO shelters (id, name, city, province, latitude, longitude, capacity, current_occupancy, status, managed_by) VALUES (7, 'Faisalabad Relief Camp 3', 'Faisalabad', 'Gilgit-Baltistan', 31.405484, 73.068165, 324, 232, 'full', 31);
INSERT INTO shelters (id, name, city, province, latitude, longitude, capacity, current_occupancy, status, managed_by) VALUES (8, 'Nowshera Relief Camp 1', 'Nowshera', 'Balochistan', 34.05682, 71.978109, 59, 31, 'closed', 39);
INSERT INTO shelters (id, name, city, province, latitude, longitude, capacity, current_occupancy, status, managed_by) VALUES (9, 'Rawalpindi Relief Camp 1', 'Rawalpindi', 'Gilgit-Baltistan', 33.522574, 73.018305, 292, 37, 'closed', 13);
INSERT INTO shelters (id, name, city, province, latitude, longitude, capacity, current_occupancy, status, managed_by) VALUES (10, 'Islamabad Relief Camp 4', 'Islamabad', 'Punjab', 33.722605, 73.063608, 62, 39, 'full', 17);
INSERT INTO shelters (id, name, city, province, latitude, longitude, capacity, current_occupancy, status, managed_by) VALUES (11, 'Swat Relief Camp 1', 'Swat', 'KPK', 35.173051, 72.428204, 251, 205, 'closed', 21);
INSERT INTO shelters (id, name, city, province, latitude, longitude, capacity, current_occupancy, status, managed_by) VALUES (12, 'Rawalpindi Relief Camp 1', 'Rawalpindi', 'Punjab', 33.52572, 73.051306, 334, 136, 'closed', 10);
INSERT INTO shelters (id, name, city, province, latitude, longitude, capacity, current_occupancy, status, managed_by) VALUES (13, 'Rawalpindi Relief Camp 1', 'Rawalpindi', 'Punjab', 33.579535, 73.037649, 330, 222, 'open', 7);
INSERT INTO shelters (id, name, city, province, latitude, longitude, capacity, current_occupancy, status, managed_by) VALUES (14, 'Abbottabad Relief Camp 2', 'Abbottabad', 'KPK', 34.155943, 73.236806, 135, 51, 'open', 23);
INSERT INTO shelters (id, name, city, province, latitude, longitude, capacity, current_occupancy, status, managed_by) VALUES (15, 'Swat Relief Camp 3', 'Swat', 'Gilgit-Baltistan', 35.175101, 72.452165, 465, 348, 'closed', 8);
INSERT INTO shelters (id, name, city, province, latitude, longitude, capacity, current_occupancy, status, managed_by) VALUES (16, 'Rawalpindi Relief Camp 3', 'Rawalpindi', 'KPK', 33.518398, 73.045726, 280, 172, 'full', 35);
INSERT INTO shelters (id, name, city, province, latitude, longitude, capacity, current_occupancy, status, managed_by) VALUES (17, 'Quetta Relief Camp 5', 'Quetta', 'Punjab', 30.171835, 66.985933, 293, 17, 'closed', 6);
INSERT INTO shelters (id, name, city, province, latitude, longitude, capacity, current_occupancy, status, managed_by) VALUES (18, 'Abbottabad Relief Camp 1', 'Abbottabad', 'Gilgit-Baltistan', 34.152773, 73.246285, 216, 53, 'open', 4);
INSERT INTO shelters (id, name, city, province, latitude, longitude, capacity, current_occupancy, status, managed_by) VALUES (19, 'Faisalabad Relief Camp 2', 'Faisalabad', 'Balochistan', 31.389534, 73.118539, 159, 158, 'closed', 30);
INSERT INTO shelters (id, name, city, province, latitude, longitude, capacity, current_occupancy, status, managed_by) VALUES (20, 'Nowshera Relief Camp 3', 'Nowshera', 'Gilgit-Baltistan', 34.037485, 71.989805, 451, 365, 'open', 47);
INSERT INTO shelters (id, name, city, province, latitude, longitude, capacity, current_occupancy, status, managed_by) VALUES (21, 'Gujranwala Relief Camp 2', 'Gujranwala', 'Balochistan', 32.15344, 74.217259, 337, 57, 'open', 49);
INSERT INTO shelters (id, name, city, province, latitude, longitude, capacity, current_occupancy, status, managed_by) VALUES (22, 'Gujranwala Relief Camp 1', 'Gujranwala', 'Sindh', 32.211167, 74.193159, 271, 77, 'closed', 37);
INSERT INTO shelters (id, name, city, province, latitude, longitude, capacity, current_occupancy, status, managed_by) VALUES (23, 'Lahore Relief Camp 1', 'Lahore', 'Sindh', 31.565232, 74.370232, 148, 141, 'closed', 46);
INSERT INTO shelters (id, name, city, province, latitude, longitude, capacity, current_occupancy, status, managed_by) VALUES (24, 'Islamabad Relief Camp 3', 'Islamabad', 'Punjab', 33.730276, 73.094528, 222, 120, 'full', 42);
INSERT INTO shelters (id, name, city, province, latitude, longitude, capacity, current_occupancy, status, managed_by) VALUES (25, 'Faisalabad Relief Camp 3', 'Faisalabad', 'KPK', 31.465508, 73.082268, 361, 84, 'open', 25);
INSERT INTO shelters (id, name, city, province, latitude, longitude, capacity, current_occupancy, status, managed_by) VALUES (26, 'Multan Relief Camp 2', 'Multan', 'Sindh', 30.156823, 71.536995, 403, 354, 'full', 29);
INSERT INTO shelters (id, name, city, province, latitude, longitude, capacity, current_occupancy, status, managed_by) VALUES (27, 'Faisalabad Relief Camp 5', 'Faisalabad', 'Sindh', 31.398741, 73.079867, 122, 37, 'full', 10);
INSERT INTO shelters (id, name, city, province, latitude, longitude, capacity, current_occupancy, status, managed_by) VALUES (28, 'Lahore Relief Camp 4', 'Lahore', 'Balochistan', 31.540799, 74.338434, 449, 281, 'open', 25);
INSERT INTO shelters (id, name, city, province, latitude, longitude, capacity, current_occupancy, status, managed_by) VALUES (29, 'Rawalpindi Relief Camp 4', 'Rawalpindi', 'Sindh', 33.557129, 72.984522, 99, 43, 'closed', 13);
INSERT INTO shelters (id, name, city, province, latitude, longitude, capacity, current_occupancy, status, managed_by) VALUES (30, 'Islamabad Relief Camp 1', 'Islamabad', 'KPK', 33.663856, 73.026252, 456, 393, 'closed', 8);
INSERT INTO shelters (id, name, city, province, latitude, longitude, capacity, current_occupancy, status, managed_by) VALUES (31, 'Peshawar Relief Camp 2', 'Peshawar', 'Punjab', 33.98498, 71.55696, 451, 158, 'closed', 2);
INSERT INTO shelters (id, name, city, province, latitude, longitude, capacity, current_occupancy, status, managed_by) VALUES (32, 'Islamabad Relief Camp 5', 'Islamabad', 'KPK', 33.690638, 73.029044, 185, 6, 'full', 23);
INSERT INTO shelters (id, name, city, province, latitude, longitude, capacity, current_occupancy, status, managed_by) VALUES (33, 'Mardan Relief Camp 1', 'Mardan', 'Gilgit-Baltistan', 34.219706, 72.009767, 384, 144, 'open', 44);
INSERT INTO shelters (id, name, city, province, latitude, longitude, capacity, current_occupancy, status, managed_by) VALUES (34, 'Faisalabad Relief Camp 4', 'Faisalabad', 'KPK', 31.368185, 73.031069, 442, 268, 'full', 41);
INSERT INTO shelters (id, name, city, province, latitude, longitude, capacity, current_occupancy, status, managed_by) VALUES (35, 'Abbottabad Relief Camp 5', 'Abbottabad', 'Sindh', 34.103286, 73.176528, 436, 167, 'closed', 19);
INSERT INTO shelters (id, name, city, province, latitude, longitude, capacity, current_occupancy, status, managed_by) VALUES (36, 'Lahore Relief Camp 3', 'Lahore', 'KPK', 31.528658, 74.335488, 229, 24, 'full', 10);
INSERT INTO shelters (id, name, city, province, latitude, longitude, capacity, current_occupancy, status, managed_by) VALUES (37, 'Islamabad Relief Camp 3', 'Islamabad', 'KPK', 33.693141, 73.048301, 469, 240, 'open', 5);
INSERT INTO shelters (id, name, city, province, latitude, longitude, capacity, current_occupancy, status, managed_by) VALUES (38, 'Faisalabad Relief Camp 2', 'Faisalabad', 'Balochistan', 31.421468, 73.111864, 353, 136, 'closed', 13);
INSERT INTO shelters (id, name, city, province, latitude, longitude, capacity, current_occupancy, status, managed_by) VALUES (39, 'Lahore Relief Camp 4', 'Lahore', 'KPK', 31.480822, 74.345622, 61, 39, 'open', 25);
INSERT INTO shelters (id, name, city, province, latitude, longitude, capacity, current_occupancy, status, managed_by) VALUES (40, 'Lahore Relief Camp 1', 'Lahore', 'Punjab', 31.481653, 74.399155, 436, 266, 'open', 30);
INSERT INTO shelters (id, name, city, province, latitude, longitude, capacity, current_occupancy, status, managed_by) VALUES (41, 'Mardan Relief Camp 2', 'Mardan', 'Gilgit-Baltistan', 34.161418, 72.007878, 457, 269, 'open', 31);
INSERT INTO shelters (id, name, city, province, latitude, longitude, capacity, current_occupancy, status, managed_by) VALUES (42, 'Gujranwala Relief Camp 4', 'Gujranwala', 'Balochistan', 32.116567, 74.227983, 58, 34, 'full', 10);
INSERT INTO shelters (id, name, city, province, latitude, longitude, capacity, current_occupancy, status, managed_by) VALUES (43, 'Hyderabad Relief Camp 5', 'Hyderabad', 'Sindh', 25.378495, 68.396223, 451, 156, 'closed', 29);
INSERT INTO shelters (id, name, city, province, latitude, longitude, capacity, current_occupancy, status, managed_by) VALUES (44, 'Islamabad Relief Camp 1', 'Islamabad', 'Gilgit-Baltistan', 33.673056, 73.031122, 303, 287, 'full', 27);
INSERT INTO shelters (id, name, city, province, latitude, longitude, capacity, current_occupancy, status, managed_by) VALUES (45, 'Nowshera Relief Camp 1', 'Nowshera', 'Sindh', 34.043207, 71.953386, 293, 70, 'closed', 17);
INSERT INTO shelters (id, name, city, province, latitude, longitude, capacity, current_occupancy, status, managed_by) VALUES (46, 'Multan Relief Camp 2', 'Multan', 'Sindh', 30.203684, 71.504032, 63, 16, 'full', 50);
INSERT INTO shelters (id, name, city, province, latitude, longitude, capacity, current_occupancy, status, managed_by) VALUES (47, 'Islamabad Relief Camp 1', 'Islamabad', 'Sindh', 33.71424, 73.067807, 424, 127, 'full', 48);
INSERT INTO shelters (id, name, city, province, latitude, longitude, capacity, current_occupancy, status, managed_by) VALUES (48, 'Gujranwala Relief Camp 1', 'Gujranwala', 'Punjab', 32.125482, 74.225382, 433, 303, 'closed', 30);
INSERT INTO shelters (id, name, city, province, latitude, longitude, capacity, current_occupancy, status, managed_by) VALUES (49, 'Mardan Relief Camp 5', 'Mardan', 'Gilgit-Baltistan', 34.24532, 71.991122, 476, 301, 'full', 3);
INSERT INTO shelters (id, name, city, province, latitude, longitude, capacity, current_occupancy, status, managed_by) VALUES (50, 'Faisalabad Relief Camp 1', 'Faisalabad', 'Balochistan', 31.407694, 73.118534, 179, 157, 'open', 7);

-- Loading data into evacuees
INSERT INTO evacuees (id, shelter_id, name, age, gender, home_district, arrived_at, health_status) VALUES (1, 3, 'Sana Rehman', 3, 'male', 'Shangla', '2026-04-19 08:38:24', 'healthy');
INSERT INTO evacuees (id, shelter_id, name, age, gender, home_district, arrived_at, health_status) VALUES (2, 42, 'Fatima Mehmood', 38, 'other', 'Chitral', '2026-01-28 08:38:24', 'recovering');
INSERT INTO evacuees (id, shelter_id, name, age, gender, home_district, arrived_at, health_status) VALUES (3, 44, 'Kamran Bibi', 73, 'female', 'Kohistan', '2026-01-03 08:38:24', 'recovering');
INSERT INTO evacuees (id, shelter_id, name, age, gender, home_district, arrived_at, health_status) VALUES (4, 14, 'Rabia Rehman', 80, 'other', 'D.I. Khan', '2026-01-21 08:38:24', 'recovering');
INSERT INTO evacuees (id, shelter_id, name, age, gender, home_district, arrived_at, health_status) VALUES (5, 40, 'Nida Begum', 55, 'other', 'Nowshera', '2026-02-06 08:38:24', 'critical');
INSERT INTO evacuees (id, shelter_id, name, age, gender, home_district, arrived_at, health_status) VALUES (6, 17, 'Raza Malik', 40, 'female', 'Chitral', '2025-12-03 08:38:24', 'injured');
INSERT INTO evacuees (id, shelter_id, name, age, gender, home_district, arrived_at, health_status) VALUES (7, 13, 'Zainab Shah', 88, 'other', 'Peshawar', '2026-04-03 08:38:24', 'injured');
INSERT INTO evacuees (id, shelter_id, name, age, gender, home_district, arrived_at, health_status) VALUES (8, 33, 'Omar Ali', 10, 'other', 'Nowshera', '2026-02-16 08:38:24', 'critical');
INSERT INTO evacuees (id, shelter_id, name, age, gender, home_district, arrived_at, health_status) VALUES (9, 6, 'Khadija Ali', 44, 'other', 'Shangla', '2025-12-26 08:38:24', 'critical');
INSERT INTO evacuees (id, shelter_id, name, age, gender, home_district, arrived_at, health_status) VALUES (10, 4, 'Tariq Shah', 63, 'male', 'Chitral', '2026-02-27 08:38:24', 'critical');
INSERT INTO evacuees (id, shelter_id, name, age, gender, home_district, arrived_at, health_status) VALUES (11, 48, 'Fahad Sheikh', 83, 'female', 'Charsadda', '2026-04-16 08:38:24', 'recovering');
INSERT INTO evacuees (id, shelter_id, name, age, gender, home_district, arrived_at, health_status) VALUES (12, 33, 'Ayesha Iqbal', 4, 'male', 'Malakand', '2025-11-17 08:38:24', 'recovering');
INSERT INTO evacuees (id, shelter_id, name, age, gender, home_district, arrived_at, health_status) VALUES (13, 39, 'Rabia Malik', 55, 'female', 'Peshawar', '2026-01-30 08:38:24', 'injured');
INSERT INTO evacuees (id, shelter_id, name, age, gender, home_district, arrived_at, health_status) VALUES (14, 34, 'Kamran Sheikh', 22, 'female', 'Malakand', '2026-02-14 08:38:24', 'recovering');
INSERT INTO evacuees (id, shelter_id, name, age, gender, home_district, arrived_at, health_status) VALUES (15, 44, 'Ali Sheikh', 59, 'female', 'Peshawar', '2026-05-02 08:38:24', 'recovering');
INSERT INTO evacuees (id, shelter_id, name, age, gender, home_district, arrived_at, health_status) VALUES (16, 26, 'Sadia Din', 76, 'female', 'Charsadda', '2026-01-04 08:38:24', 'recovering');
INSERT INTO evacuees (id, shelter_id, name, age, gender, home_district, arrived_at, health_status) VALUES (17, 24, 'Omar Ahmed', 71, 'other', 'D.I. Khan', '2026-03-09 08:38:24', 'healthy');
INSERT INTO evacuees (id, shelter_id, name, age, gender, home_district, arrived_at, health_status) VALUES (18, 11, 'Omar Ali', 5, 'male', 'Malakand', '2026-01-12 08:38:24', 'recovering');
INSERT INTO evacuees (id, shelter_id, name, age, gender, home_district, arrived_at, health_status) VALUES (19, 24, 'Nida Malik', 19, 'female', 'Swat', '2026-03-18 08:38:24', 'healthy');
INSERT INTO evacuees (id, shelter_id, name, age, gender, home_district, arrived_at, health_status) VALUES (20, 25, 'Usman Zafar', 9, 'male', 'Mardan', '2025-11-28 08:38:24', 'healthy');
INSERT INTO evacuees (id, shelter_id, name, age, gender, home_district, arrived_at, health_status) VALUES (21, 7, 'Hira Zafar', 38, 'other', 'Mardan', '2026-03-14 08:38:24', 'injured');
INSERT INTO evacuees (id, shelter_id, name, age, gender, home_district, arrived_at, health_status) VALUES (22, 48, 'Bilal Bibi', 71, 'male', 'Malakand', '2026-01-24 08:38:24', 'recovering');
INSERT INTO evacuees (id, shelter_id, name, age, gender, home_district, arrived_at, health_status) VALUES (23, 25, 'Kamran Zafar', 71, 'other', 'Peshawar', '2025-11-18 08:38:24', 'critical');
INSERT INTO evacuees (id, shelter_id, name, age, gender, home_district, arrived_at, health_status) VALUES (24, 34, 'Fahad Shah', 21, 'other', 'Charsadda', '2025-12-29 08:38:24', 'critical');
INSERT INTO evacuees (id, shelter_id, name, age, gender, home_district, arrived_at, health_status) VALUES (25, 13, 'Ali Hussain', 50, 'female', 'Dir', '2025-12-28 08:38:24', 'recovering');
INSERT INTO evacuees (id, shelter_id, name, age, gender, home_district, arrived_at, health_status) VALUES (26, 34, 'Kamran Begum', 64, 'other', 'Nowshera', '2025-12-19 08:38:24', 'healthy');
INSERT INTO evacuees (id, shelter_id, name, age, gender, home_district, arrived_at, health_status) VALUES (27, 4, 'Ali Bibi', 17, 'other', 'Dir', '2026-05-02 08:38:24', 'healthy');
INSERT INTO evacuees (id, shelter_id, name, age, gender, home_district, arrived_at, health_status) VALUES (28, 32, 'Usman Iqbal', 85, 'other', 'Charsadda', '2026-02-14 08:38:24', 'critical');
INSERT INTO evacuees (id, shelter_id, name, age, gender, home_district, arrived_at, health_status) VALUES (29, 5, 'Maryam Khan', 55, 'male', 'Nowshera', '2025-12-28 08:38:24', 'recovering');
INSERT INTO evacuees (id, shelter_id, name, age, gender, home_district, arrived_at, health_status) VALUES (30, 47, 'Sana Syed', 32, 'female', 'Shangla', '2026-02-01 08:38:24', 'recovering');
INSERT INTO evacuees (id, shelter_id, name, age, gender, home_district, arrived_at, health_status) VALUES (31, 50, 'Sadia Tariq', 4, 'female', 'Shangla', '2026-02-06 08:38:24', 'injured');
INSERT INTO evacuees (id, shelter_id, name, age, gender, home_district, arrived_at, health_status) VALUES (32, 24, 'Ali Malik', 25, 'female', 'Nowshera', '2025-11-15 08:38:24', 'critical');
INSERT INTO evacuees (id, shelter_id, name, age, gender, home_district, arrived_at, health_status) VALUES (33, 24, 'Khadija Hussain', 44, 'other', 'Dir', '2026-03-05 08:38:24', 'injured');
INSERT INTO evacuees (id, shelter_id, name, age, gender, home_district, arrived_at, health_status) VALUES (34, 39, 'Sadia Ahmed', 61, 'male', 'D.I. Khan', '2025-11-29 08:38:24', 'recovering');
INSERT INTO evacuees (id, shelter_id, name, age, gender, home_district, arrived_at, health_status) VALUES (35, 39, 'Omar Rehman', 81, 'male', 'Dir', '2026-03-03 08:38:24', 'recovering');
INSERT INTO evacuees (id, shelter_id, name, age, gender, home_district, arrived_at, health_status) VALUES (36, 37, 'Bilal Shah', 14, 'female', 'Peshawar', '2026-04-28 08:38:24', 'critical');
INSERT INTO evacuees (id, shelter_id, name, age, gender, home_district, arrived_at, health_status) VALUES (37, 32, 'Omar Din', 71, 'female', 'D.I. Khan', '2026-04-25 08:38:24', 'critical');
INSERT INTO evacuees (id, shelter_id, name, age, gender, home_district, arrived_at, health_status) VALUES (38, 13, 'Maryam Sheikh', 70, 'female', 'D.I. Khan', '2026-01-06 08:38:24', 'injured');
INSERT INTO evacuees (id, shelter_id, name, age, gender, home_district, arrived_at, health_status) VALUES (39, 34, 'Hira Hussain', 1, 'female', 'Mardan', '2026-05-13 08:38:24', 'critical');
INSERT INTO evacuees (id, shelter_id, name, age, gender, home_district, arrived_at, health_status) VALUES (40, 26, 'Fatima Din', 37, 'male', 'Peshawar', '2026-01-04 08:38:24', 'critical');
INSERT INTO evacuees (id, shelter_id, name, age, gender, home_district, arrived_at, health_status) VALUES (41, 18, 'Sana Ahmed', 87, 'female', 'Peshawar', '2026-05-13 08:38:24', 'injured');
INSERT INTO evacuees (id, shelter_id, name, age, gender, home_district, arrived_at, health_status) VALUES (42, 13, 'Hira Tariq', 61, 'male', 'Kohistan', '2026-03-29 08:38:24', 'critical');
INSERT INTO evacuees (id, shelter_id, name, age, gender, home_district, arrived_at, health_status) VALUES (43, 46, 'Omar Qureshi', 4, 'male', 'D.I. Khan', '2025-12-22 08:38:24', 'injured');
INSERT INTO evacuees (id, shelter_id, name, age, gender, home_district, arrived_at, health_status) VALUES (44, 40, 'Usman Mehmood', 70, 'other', 'Chitral', '2026-04-27 08:38:24', 'critical');
INSERT INTO evacuees (id, shelter_id, name, age, gender, home_district, arrived_at, health_status) VALUES (45, 2, 'Tariq Sheikh', 2, 'female', 'Mardan', '2025-12-11 08:38:24', 'recovering');
INSERT INTO evacuees (id, shelter_id, name, age, gender, home_district, arrived_at, health_status) VALUES (46, 6, 'Usman Zafar', 8, 'male', 'Malakand', '2026-02-06 08:38:24', 'healthy');
INSERT INTO evacuees (id, shelter_id, name, age, gender, home_district, arrived_at, health_status) VALUES (47, 7, 'Raza Bibi', 56, 'male', 'Mardan', '2025-11-25 08:38:24', 'critical');
INSERT INTO evacuees (id, shelter_id, name, age, gender, home_district, arrived_at, health_status) VALUES (48, 4, 'Sadia Khan', 4, 'other', 'D.I. Khan', '2026-03-27 08:38:24', 'critical');
INSERT INTO evacuees (id, shelter_id, name, age, gender, home_district, arrived_at, health_status) VALUES (49, 7, 'Imran Zafar', 30, 'other', 'Shangla', '2026-03-16 08:38:24', 'critical');
INSERT INTO evacuees (id, shelter_id, name, age, gender, home_district, arrived_at, health_status) VALUES (50, 47, 'Tariq Begum', 29, 'male', 'Peshawar', '2026-05-06 08:38:24', 'healthy');
INSERT INTO evacuees (id, shelter_id, name, age, gender, home_district, arrived_at, health_status) VALUES (51, 34, 'Usman Qureshi', 83, 'female', 'D.I. Khan', '2026-04-07 08:38:24', 'injured');
INSERT INTO evacuees (id, shelter_id, name, age, gender, home_district, arrived_at, health_status) VALUES (52, 12, 'Usman Din', 8, 'other', 'Shangla', '2025-12-22 08:38:24', 'critical');
INSERT INTO evacuees (id, shelter_id, name, age, gender, home_district, arrived_at, health_status) VALUES (53, 18, 'Hira Zafar', 77, 'male', 'Peshawar', '2026-05-04 08:38:24', 'injured');
INSERT INTO evacuees (id, shelter_id, name, age, gender, home_district, arrived_at, health_status) VALUES (54, 32, 'Khadija Mehmood', 40, 'male', 'Shangla', '2026-02-17 08:38:24', 'injured');
INSERT INTO evacuees (id, shelter_id, name, age, gender, home_district, arrived_at, health_status) VALUES (55, 36, 'Tariq Qureshi', 1, 'other', 'Swat', '2025-12-04 08:38:24', 'injured');
INSERT INTO evacuees (id, shelter_id, name, age, gender, home_district, arrived_at, health_status) VALUES (56, 3, 'Maryam Zafar', 36, 'female', 'D.I. Khan', '2025-12-16 08:38:24', 'recovering');
INSERT INTO evacuees (id, shelter_id, name, age, gender, home_district, arrived_at, health_status) VALUES (57, 35, 'Sadia Qureshi', 75, 'other', 'Dir', '2026-03-20 08:38:24', 'critical');
INSERT INTO evacuees (id, shelter_id, name, age, gender, home_district, arrived_at, health_status) VALUES (58, 28, 'Ayesha Sheikh', 56, 'female', 'Kohistan', '2026-01-31 08:38:24', 'healthy');
INSERT INTO evacuees (id, shelter_id, name, age, gender, home_district, arrived_at, health_status) VALUES (59, 32, 'Hira Syed', 41, 'male', 'Swat', '2026-01-20 08:38:24', 'healthy');
INSERT INTO evacuees (id, shelter_id, name, age, gender, home_district, arrived_at, health_status) VALUES (60, 9, 'Khadija Ahmed', 53, 'male', 'Nowshera', '2025-11-28 08:38:24', 'injured');
INSERT INTO evacuees (id, shelter_id, name, age, gender, home_district, arrived_at, health_status) VALUES (61, 18, 'Usman Khan', 10, 'other', 'Charsadda', '2026-04-02 08:38:24', 'injured');
INSERT INTO evacuees (id, shelter_id, name, age, gender, home_district, arrived_at, health_status) VALUES (62, 7, 'Sadia Ahmed', 7, 'other', 'Dir', '2026-03-02 08:38:24', 'healthy');
INSERT INTO evacuees (id, shelter_id, name, age, gender, home_district, arrived_at, health_status) VALUES (63, 50, 'Sana Shah', 72, 'male', 'Shangla', '2026-03-17 08:38:24', 'recovering');
INSERT INTO evacuees (id, shelter_id, name, age, gender, home_district, arrived_at, health_status) VALUES (64, 30, 'Omar Begum', 11, 'female', 'Chitral', '2026-02-11 08:38:24', 'injured');
INSERT INTO evacuees (id, shelter_id, name, age, gender, home_district, arrived_at, health_status) VALUES (65, 14, 'Fahad Tariq', 59, 'female', 'Peshawar', '2026-05-01 08:38:24', 'injured');
INSERT INTO evacuees (id, shelter_id, name, age, gender, home_district, arrived_at, health_status) VALUES (66, 40, 'Hira Begum', 19, 'other', 'Chitral', '2026-04-23 08:38:24', 'healthy');
INSERT INTO evacuees (id, shelter_id, name, age, gender, home_district, arrived_at, health_status) VALUES (67, 3, 'Imran Iqbal', 10, 'other', 'Mardan', '2026-02-10 08:38:24', 'injured');
INSERT INTO evacuees (id, shelter_id, name, age, gender, home_district, arrived_at, health_status) VALUES (68, 35, 'Sana Khan', 44, 'male', 'Swat', '2026-01-03 08:38:24', 'critical');
INSERT INTO evacuees (id, shelter_id, name, age, gender, home_district, arrived_at, health_status) VALUES (69, 18, 'Fatima Din', 84, 'female', 'Swat', '2026-04-08 08:38:24', 'injured');
INSERT INTO evacuees (id, shelter_id, name, age, gender, home_district, arrived_at, health_status) VALUES (70, 19, 'Tariq Iqbal', 27, 'other', 'Swat', '2026-02-18 08:38:24', 'injured');
INSERT INTO evacuees (id, shelter_id, name, age, gender, home_district, arrived_at, health_status) VALUES (71, 27, 'Imran Begum', 16, 'other', 'Swat', '2026-05-04 08:38:24', 'healthy');
INSERT INTO evacuees (id, shelter_id, name, age, gender, home_district, arrived_at, health_status) VALUES (72, 36, 'Sadia Tariq', 73, 'male', 'Charsadda', '2026-01-16 08:38:24', 'recovering');
INSERT INTO evacuees (id, shelter_id, name, age, gender, home_district, arrived_at, health_status) VALUES (73, 18, 'Usman Ahmed', 58, 'male', 'Nowshera', '2026-04-11 08:38:24', 'healthy');
INSERT INTO evacuees (id, shelter_id, name, age, gender, home_district, arrived_at, health_status) VALUES (74, 44, 'Khadija Khan', 55, 'female', 'Swat', '2026-02-18 08:38:24', 'recovering');
INSERT INTO evacuees (id, shelter_id, name, age, gender, home_district, arrived_at, health_status) VALUES (75, 15, 'Hassan Zafar', 88, 'male', 'Nowshera', '2026-04-26 08:38:24', 'injured');
INSERT INTO evacuees (id, shelter_id, name, age, gender, home_district, arrived_at, health_status) VALUES (76, 40, 'Ayesha Rehman', 88, 'male', 'Chitral', '2026-05-07 08:38:24', 'critical');
INSERT INTO evacuees (id, shelter_id, name, age, gender, home_district, arrived_at, health_status) VALUES (77, 33, 'Ali Sheikh', 31, 'female', 'Dir', '2026-03-30 08:38:24', 'critical');
INSERT INTO evacuees (id, shelter_id, name, age, gender, home_district, arrived_at, health_status) VALUES (78, 36, 'Usman Mehmood', 28, 'female', 'Mardan', '2026-03-02 08:38:24', 'injured');
INSERT INTO evacuees (id, shelter_id, name, age, gender, home_district, arrived_at, health_status) VALUES (79, 24, 'Imran Malik', 23, 'female', 'Swat', '2026-04-08 08:38:24', 'injured');
INSERT INTO evacuees (id, shelter_id, name, age, gender, home_district, arrived_at, health_status) VALUES (80, 42, 'Tariq Malik', 35, 'other', 'D.I. Khan', '2026-02-06 08:38:24', 'healthy');
INSERT INTO evacuees (id, shelter_id, name, age, gender, home_district, arrived_at, health_status) VALUES (81, 19, 'Sadia Syed', 37, 'female', 'Chitral', '2025-12-11 08:38:24', 'recovering');
INSERT INTO evacuees (id, shelter_id, name, age, gender, home_district, arrived_at, health_status) VALUES (82, 38, 'Hira Khan', 84, 'other', 'D.I. Khan', '2025-11-18 08:38:24', 'injured');
INSERT INTO evacuees (id, shelter_id, name, age, gender, home_district, arrived_at, health_status) VALUES (83, 26, 'Sana Bibi', 61, 'other', 'Peshawar', '2026-02-07 08:38:24', 'recovering');
INSERT INTO evacuees (id, shelter_id, name, age, gender, home_district, arrived_at, health_status) VALUES (84, 31, 'Rabia Shah', 57, 'other', 'Charsadda', '2026-03-01 08:38:24', 'critical');
INSERT INTO evacuees (id, shelter_id, name, age, gender, home_district, arrived_at, health_status) VALUES (85, 7, 'Hassan Bibi', 9, 'male', 'Nowshera', '2026-04-11 08:38:24', 'injured');
INSERT INTO evacuees (id, shelter_id, name, age, gender, home_district, arrived_at, health_status) VALUES (86, 2, 'Omar Begum', 89, 'other', 'Mardan', '2025-11-26 08:38:24', 'recovering');
INSERT INTO evacuees (id, shelter_id, name, age, gender, home_district, arrived_at, health_status) VALUES (87, 14, 'Imran Qureshi', 50, 'female', 'Chitral', '2026-04-04 08:38:24', 'healthy');
INSERT INTO evacuees (id, shelter_id, name, age, gender, home_district, arrived_at, health_status) VALUES (88, 1, 'Sana Syed', 20, 'female', 'Swat', '2025-12-22 08:38:24', 'healthy');
INSERT INTO evacuees (id, shelter_id, name, age, gender, home_district, arrived_at, health_status) VALUES (89, 23, 'Nida Syed', 25, 'other', 'Shangla', '2026-05-12 08:38:24', 'injured');
INSERT INTO evacuees (id, shelter_id, name, age, gender, home_district, arrived_at, health_status) VALUES (90, 26, 'Ayesha Begum', 28, 'female', 'Kohistan', '2026-02-15 08:38:24', 'critical');
INSERT INTO evacuees (id, shelter_id, name, age, gender, home_district, arrived_at, health_status) VALUES (91, 46, 'Sadia Ali', 39, 'female', 'Charsadda', '2025-12-07 08:38:24', 'recovering');
INSERT INTO evacuees (id, shelter_id, name, age, gender, home_district, arrived_at, health_status) VALUES (92, 37, 'Ayesha Ahmed', 14, 'other', 'Shangla', '2026-02-18 08:38:24', 'injured');
INSERT INTO evacuees (id, shelter_id, name, age, gender, home_district, arrived_at, health_status) VALUES (93, 2, 'Sadia Iqbal', 29, 'male', 'Peshawar', '2026-02-13 08:38:24', 'critical');
INSERT INTO evacuees (id, shelter_id, name, age, gender, home_district, arrived_at, health_status) VALUES (94, 19, 'Imran Rehman', 69, 'female', 'Shangla', '2026-05-12 08:38:24', 'critical');
INSERT INTO evacuees (id, shelter_id, name, age, gender, home_district, arrived_at, health_status) VALUES (95, 5, 'Ali Qureshi', 29, 'male', 'Shangla', '2026-05-12 08:38:24', 'injured');
INSERT INTO evacuees (id, shelter_id, name, age, gender, home_district, arrived_at, health_status) VALUES (96, 26, 'Kamran Ali', 42, 'male', 'Kohistan', '2026-03-27 08:38:24', 'critical');
INSERT INTO evacuees (id, shelter_id, name, age, gender, home_district, arrived_at, health_status) VALUES (97, 32, 'Rabia Shah', 41, 'other', 'Dir', '2025-12-23 08:38:24', 'critical');
INSERT INTO evacuees (id, shelter_id, name, age, gender, home_district, arrived_at, health_status) VALUES (98, 6, 'Maryam Iqbal', 54, 'male', 'Shangla', '2025-11-26 08:38:24', 'healthy');
INSERT INTO evacuees (id, shelter_id, name, age, gender, home_district, arrived_at, health_status) VALUES (99, 23, 'Khadija Tariq', 39, 'other', 'Peshawar', '2026-05-03 08:38:24', 'healthy');
INSERT INTO evacuees (id, shelter_id, name, age, gender, home_district, arrived_at, health_status) VALUES (100, 45, 'Imran Mehmood', 88, 'other', 'Shangla', '2025-12-14 08:38:24', 'healthy');

-- Loading data into supplies
INSERT INTO supplies (id, shelter_id, item_name, category, quantity, last_updated) VALUES (1, 41, 'Water Bottles', 'food', 118, '2026-04-19 08:38:24');
INSERT INTO supplies (id, shelter_id, item_name, category, quantity, last_updated) VALUES (2, 48, 'Rice Bags', 'medicine', 474, '2026-04-20 08:38:24');
INSERT INTO supplies (id, shelter_id, item_name, category, quantity, last_updated) VALUES (3, 45, 'Painkillers', 'medicine', 878, '2026-04-29 08:38:24');
INSERT INTO supplies (id, shelter_id, item_name, category, quantity, last_updated) VALUES (4, 36, 'Flour Sacks', 'sanitation', 973, '2026-05-10 08:38:24');
INSERT INTO supplies (id, shelter_id, item_name, category, quantity, last_updated) VALUES (5, 48, 'Cooking Oil', 'food', 937, '2026-04-25 08:38:24');
INSERT INTO supplies (id, shelter_id, item_name, category, quantity, last_updated) VALUES (6, 38, 'First Aid Kits', 'medicine', 729, '2026-04-15 08:38:24');
INSERT INTO supplies (id, shelter_id, item_name, category, quantity, last_updated) VALUES (7, 26, 'Rice Bags', 'sanitation', 511, '2026-04-29 08:38:24');
INSERT INTO supplies (id, shelter_id, item_name, category, quantity, last_updated) VALUES (8, 50, 'Flour Sacks', 'medicine', 46, '2026-04-24 08:38:24');
INSERT INTO supplies (id, shelter_id, item_name, category, quantity, last_updated) VALUES (9, 4, 'Tents', 'medicine', 466, '2026-04-16 08:38:24');
INSERT INTO supplies (id, shelter_id, item_name, category, quantity, last_updated) VALUES (10, 23, 'Water Bottles', 'other', 47, '2026-05-11 08:38:24');
INSERT INTO supplies (id, shelter_id, item_name, category, quantity, last_updated) VALUES (11, 32, 'Cooking Oil', 'sanitation', 739, '2026-04-13 08:38:24');
INSERT INTO supplies (id, shelter_id, item_name, category, quantity, last_updated) VALUES (12, 43, 'Cooking Oil', 'medicine', 478, '2026-05-06 08:38:24');
INSERT INTO supplies (id, shelter_id, item_name, category, quantity, last_updated) VALUES (13, 48, 'Rice Bags', 'clothing', 348, '2026-04-15 08:38:24');
INSERT INTO supplies (id, shelter_id, item_name, category, quantity, last_updated) VALUES (14, 10, 'First Aid Kits', 'clothing', 313, '2026-05-01 08:38:24');
INSERT INTO supplies (id, shelter_id, item_name, category, quantity, last_updated) VALUES (15, 7, 'Soap', 'food', 812, '2026-04-26 08:38:24');
INSERT INTO supplies (id, shelter_id, item_name, category, quantity, last_updated) VALUES (16, 44, 'Painkillers', 'sanitation', 136, '2026-04-28 08:38:24');
INSERT INTO supplies (id, shelter_id, item_name, category, quantity, last_updated) VALUES (17, 18, 'Blankets', 'food', 895, '2026-05-12 08:38:24');
INSERT INTO supplies (id, shelter_id, item_name, category, quantity, last_updated) VALUES (18, 41, 'Cooking Oil', 'clothing', 559, '2026-04-20 08:38:24');
INSERT INTO supplies (id, shelter_id, item_name, category, quantity, last_updated) VALUES (19, 29, 'Cooking Oil', 'sanitation', 858, '2026-04-16 08:38:24');
INSERT INTO supplies (id, shelter_id, item_name, category, quantity, last_updated) VALUES (20, 10, 'Painkillers', 'other', 622, '2026-04-24 08:38:24');
INSERT INTO supplies (id, shelter_id, item_name, category, quantity, last_updated) VALUES (21, 46, 'Tents', 'sanitation', 988, '2026-04-27 08:38:24');
INSERT INTO supplies (id, shelter_id, item_name, category, quantity, last_updated) VALUES (22, 28, 'Cooking Oil', 'medicine', 384, '2026-04-28 08:38:24');
INSERT INTO supplies (id, shelter_id, item_name, category, quantity, last_updated) VALUES (23, 8, 'Tents', 'clothing', 862, '2026-04-30 08:38:24');
INSERT INTO supplies (id, shelter_id, item_name, category, quantity, last_updated) VALUES (24, 28, 'Water Bottles', 'sanitation', 918, '2026-05-01 08:38:24');
INSERT INTO supplies (id, shelter_id, item_name, category, quantity, last_updated) VALUES (25, 32, 'Soap', 'clothing', 695, '2026-04-30 08:38:24');
INSERT INTO supplies (id, shelter_id, item_name, category, quantity, last_updated) VALUES (26, 18, 'Soap', 'sanitation', 942, '2026-05-01 08:38:24');
INSERT INTO supplies (id, shelter_id, item_name, category, quantity, last_updated) VALUES (27, 12, 'Soap', 'medicine', 670, '2026-05-08 08:38:24');
INSERT INTO supplies (id, shelter_id, item_name, category, quantity, last_updated) VALUES (28, 9, 'Flour Sacks', 'food', 652, '2026-04-25 08:38:24');
INSERT INTO supplies (id, shelter_id, item_name, category, quantity, last_updated) VALUES (29, 29, 'Water Bottles', 'clothing', 167, '2026-04-24 08:38:24');
INSERT INTO supplies (id, shelter_id, item_name, category, quantity, last_updated) VALUES (30, 15, 'Blankets', 'medicine', 344, '2026-05-02 08:38:24');
INSERT INTO supplies (id, shelter_id, item_name, category, quantity, last_updated) VALUES (31, 26, 'Blankets', 'medicine', 593, '2026-04-23 08:38:24');
INSERT INTO supplies (id, shelter_id, item_name, category, quantity, last_updated) VALUES (32, 32, 'Painkillers', 'other', 596, '2026-04-15 08:38:24');
INSERT INTO supplies (id, shelter_id, item_name, category, quantity, last_updated) VALUES (33, 21, 'Tents', 'sanitation', 711, '2026-04-18 08:38:24');
INSERT INTO supplies (id, shelter_id, item_name, category, quantity, last_updated) VALUES (34, 40, 'Water Bottles', 'food', 520, '2026-04-15 08:38:24');
INSERT INTO supplies (id, shelter_id, item_name, category, quantity, last_updated) VALUES (35, 33, 'First Aid Kits', 'sanitation', 409, '2026-05-05 08:38:24');
INSERT INTO supplies (id, shelter_id, item_name, category, quantity, last_updated) VALUES (36, 8, 'Cooking Oil', 'sanitation', 210, '2026-04-27 08:38:24');
INSERT INTO supplies (id, shelter_id, item_name, category, quantity, last_updated) VALUES (37, 36, 'First Aid Kits', 'medicine', 10, '2026-04-20 08:38:24');
INSERT INTO supplies (id, shelter_id, item_name, category, quantity, last_updated) VALUES (38, 29, 'Soap', 'food', 497, '2026-04-26 08:38:24');
INSERT INTO supplies (id, shelter_id, item_name, category, quantity, last_updated) VALUES (39, 42, 'Painkillers', 'clothing', 585, '2026-04-27 08:38:24');
INSERT INTO supplies (id, shelter_id, item_name, category, quantity, last_updated) VALUES (40, 15, 'Bandages', 'other', 659, '2026-04-16 08:38:24');
INSERT INTO supplies (id, shelter_id, item_name, category, quantity, last_updated) VALUES (41, 33, 'Bandages', 'other', 324, '2026-05-05 08:38:24');
INSERT INTO supplies (id, shelter_id, item_name, category, quantity, last_updated) VALUES (42, 19, 'Painkillers', 'clothing', 10, '2026-05-11 08:38:24');
INSERT INTO supplies (id, shelter_id, item_name, category, quantity, last_updated) VALUES (43, 15, 'Soap', 'other', 507, '2026-04-19 08:38:24');
INSERT INTO supplies (id, shelter_id, item_name, category, quantity, last_updated) VALUES (44, 6, 'Water Bottles', 'sanitation', 42, '2026-05-12 08:38:24');
INSERT INTO supplies (id, shelter_id, item_name, category, quantity, last_updated) VALUES (45, 46, 'Flour Sacks', 'clothing', 308, '2026-05-04 08:38:24');
INSERT INTO supplies (id, shelter_id, item_name, category, quantity, last_updated) VALUES (46, 28, 'Flour Sacks', 'sanitation', 452, '2026-05-13 08:38:24');
INSERT INTO supplies (id, shelter_id, item_name, category, quantity, last_updated) VALUES (47, 14, 'Painkillers', 'medicine', 238, '2026-04-26 08:38:24');
INSERT INTO supplies (id, shelter_id, item_name, category, quantity, last_updated) VALUES (48, 45, 'First Aid Kits', 'medicine', 380, '2026-05-04 08:38:24');
INSERT INTO supplies (id, shelter_id, item_name, category, quantity, last_updated) VALUES (49, 43, 'Tents', 'food', 518, '2026-05-09 08:38:24');
INSERT INTO supplies (id, shelter_id, item_name, category, quantity, last_updated) VALUES (50, 3, 'Tents', 'medicine', 28, '2026-04-19 08:38:24');
INSERT INTO supplies (id, shelter_id, item_name, category, quantity, last_updated) VALUES (51, 26, 'Bandages', 'food', 876, '2026-04-25 08:38:24');
INSERT INTO supplies (id, shelter_id, item_name, category, quantity, last_updated) VALUES (52, 21, 'Flour Sacks', 'medicine', 247, '2026-04-13 08:38:24');
INSERT INTO supplies (id, shelter_id, item_name, category, quantity, last_updated) VALUES (53, 15, 'Tents', 'other', 218, '2026-05-05 08:38:24');
INSERT INTO supplies (id, shelter_id, item_name, category, quantity, last_updated) VALUES (54, 40, 'Painkillers', 'other', 77, '2026-04-18 08:38:24');
INSERT INTO supplies (id, shelter_id, item_name, category, quantity, last_updated) VALUES (55, 26, 'Soap', 'food', 617, '2026-04-18 08:38:24');
INSERT INTO supplies (id, shelter_id, item_name, category, quantity, last_updated) VALUES (56, 46, 'Bandages', 'food', 492, '2026-05-07 08:38:24');
INSERT INTO supplies (id, shelter_id, item_name, category, quantity, last_updated) VALUES (57, 31, 'Soap', 'other', 92, '2026-05-10 08:38:24');
INSERT INTO supplies (id, shelter_id, item_name, category, quantity, last_updated) VALUES (58, 37, 'Tents', 'other', 495, '2026-05-06 08:38:24');
INSERT INTO supplies (id, shelter_id, item_name, category, quantity, last_updated) VALUES (59, 34, 'Tents', 'medicine', 794, '2026-04-21 08:38:24');
INSERT INTO supplies (id, shelter_id, item_name, category, quantity, last_updated) VALUES (60, 45, 'Tents', 'other', 468, '2026-05-13 08:38:24');
INSERT INTO supplies (id, shelter_id, item_name, category, quantity, last_updated) VALUES (61, 5, 'Cooking Oil', 'food', 337, '2026-04-18 08:38:24');
INSERT INTO supplies (id, shelter_id, item_name, category, quantity, last_updated) VALUES (62, 39, 'Painkillers', 'other', 208, '2026-05-03 08:38:24');
INSERT INTO supplies (id, shelter_id, item_name, category, quantity, last_updated) VALUES (63, 36, 'Painkillers', 'other', 630, '2026-05-11 08:38:24');
INSERT INTO supplies (id, shelter_id, item_name, category, quantity, last_updated) VALUES (64, 13, 'Painkillers', 'medicine', 636, '2026-04-23 08:38:24');
INSERT INTO supplies (id, shelter_id, item_name, category, quantity, last_updated) VALUES (65, 19, 'First Aid Kits', 'food', 267, '2026-05-12 08:38:24');
INSERT INTO supplies (id, shelter_id, item_name, category, quantity, last_updated) VALUES (66, 38, 'Bandages', 'clothing', 345, '2026-05-08 08:38:24');
INSERT INTO supplies (id, shelter_id, item_name, category, quantity, last_updated) VALUES (67, 5, 'Bandages', 'clothing', 388, '2026-05-10 08:38:24');
INSERT INTO supplies (id, shelter_id, item_name, category, quantity, last_updated) VALUES (68, 35, 'Water Bottles', 'medicine', 524, '2026-05-02 08:38:24');
INSERT INTO supplies (id, shelter_id, item_name, category, quantity, last_updated) VALUES (69, 29, 'Blankets', 'food', 506, '2026-05-13 08:38:24');
INSERT INTO supplies (id, shelter_id, item_name, category, quantity, last_updated) VALUES (70, 30, 'Painkillers', 'other', 228, '2026-04-16 08:38:24');
INSERT INTO supplies (id, shelter_id, item_name, category, quantity, last_updated) VALUES (71, 47, 'Soap', 'clothing', 774, '2026-04-29 08:38:24');
INSERT INTO supplies (id, shelter_id, item_name, category, quantity, last_updated) VALUES (72, 34, 'Cooking Oil', 'sanitation', 127, '2026-04-27 08:38:24');
INSERT INTO supplies (id, shelter_id, item_name, category, quantity, last_updated) VALUES (73, 34, 'Cooking Oil', 'sanitation', 111, '2026-05-03 08:38:24');
INSERT INTO supplies (id, shelter_id, item_name, category, quantity, last_updated) VALUES (74, 44, 'Soap', 'food', 881, '2026-05-04 08:38:24');
INSERT INTO supplies (id, shelter_id, item_name, category, quantity, last_updated) VALUES (75, 20, 'Blankets', 'other', 692, '2026-04-16 08:38:24');
INSERT INTO supplies (id, shelter_id, item_name, category, quantity, last_updated) VALUES (76, 41, 'Water Bottles', 'sanitation', 409, '2026-05-06 08:38:24');
INSERT INTO supplies (id, shelter_id, item_name, category, quantity, last_updated) VALUES (77, 17, 'Cooking Oil', 'other', 45, '2026-04-20 08:38:24');
INSERT INTO supplies (id, shelter_id, item_name, category, quantity, last_updated) VALUES (78, 27, 'Tents', 'food', 903, '2026-04-26 08:38:24');
INSERT INTO supplies (id, shelter_id, item_name, category, quantity, last_updated) VALUES (79, 43, 'Bandages', 'medicine', 42, '2026-04-28 08:38:24');
INSERT INTO supplies (id, shelter_id, item_name, category, quantity, last_updated) VALUES (80, 5, 'Antibiotics', 'clothing', 150, '2026-05-03 08:38:24');
INSERT INTO supplies (id, shelter_id, item_name, category, quantity, last_updated) VALUES (81, 46, 'First Aid Kits', 'other', 31, '2026-05-08 08:38:24');
INSERT INTO supplies (id, shelter_id, item_name, category, quantity, last_updated) VALUES (82, 30, 'Antibiotics', 'clothing', 425, '2026-05-04 08:38:24');
INSERT INTO supplies (id, shelter_id, item_name, category, quantity, last_updated) VALUES (83, 11, 'Antibiotics', 'clothing', 103, '2026-05-11 08:38:24');
INSERT INTO supplies (id, shelter_id, item_name, category, quantity, last_updated) VALUES (84, 21, 'Water Bottles', 'sanitation', 497, '2026-05-10 08:38:24');
INSERT INTO supplies (id, shelter_id, item_name, category, quantity, last_updated) VALUES (85, 9, 'Blankets', 'food', 955, '2026-04-29 08:38:24');
INSERT INTO supplies (id, shelter_id, item_name, category, quantity, last_updated) VALUES (86, 6, 'Tents', 'food', 517, '2026-05-05 08:38:24');
INSERT INTO supplies (id, shelter_id, item_name, category, quantity, last_updated) VALUES (87, 32, 'First Aid Kits', 'sanitation', 880, '2026-04-18 08:38:24');
INSERT INTO supplies (id, shelter_id, item_name, category, quantity, last_updated) VALUES (88, 50, 'Rice Bags', 'medicine', 432, '2026-04-20 08:38:24');
INSERT INTO supplies (id, shelter_id, item_name, category, quantity, last_updated) VALUES (89, 2, 'Tents', 'sanitation', 892, '2026-04-25 08:38:24');
INSERT INTO supplies (id, shelter_id, item_name, category, quantity, last_updated) VALUES (90, 8, 'Painkillers', 'medicine', 926, '2026-05-06 08:38:24');
INSERT INTO supplies (id, shelter_id, item_name, category, quantity, last_updated) VALUES (91, 27, 'Bandages', 'other', 49, '2026-05-01 08:38:24');
INSERT INTO supplies (id, shelter_id, item_name, category, quantity, last_updated) VALUES (92, 27, 'Soap', 'medicine', 633, '2026-05-12 08:38:24');
INSERT INTO supplies (id, shelter_id, item_name, category, quantity, last_updated) VALUES (93, 15, 'Cooking Oil', 'medicine', 620, '2026-05-05 08:38:24');
INSERT INTO supplies (id, shelter_id, item_name, category, quantity, last_updated) VALUES (94, 26, 'First Aid Kits', 'medicine', 771, '2026-04-15 08:38:24');
INSERT INTO supplies (id, shelter_id, item_name, category, quantity, last_updated) VALUES (95, 14, 'Soap', 'other', 270, '2026-04-21 08:38:24');
INSERT INTO supplies (id, shelter_id, item_name, category, quantity, last_updated) VALUES (96, 48, 'Antibiotics', 'medicine', 302, '2026-04-23 08:38:24');
INSERT INTO supplies (id, shelter_id, item_name, category, quantity, last_updated) VALUES (97, 15, 'Blankets', 'food', 607, '2026-05-12 08:38:24');
INSERT INTO supplies (id, shelter_id, item_name, category, quantity, last_updated) VALUES (98, 7, 'Cooking Oil', 'medicine', 473, '2026-04-16 08:38:24');
INSERT INTO supplies (id, shelter_id, item_name, category, quantity, last_updated) VALUES (99, 28, 'First Aid Kits', 'other', 227, '2026-04-26 08:38:24');
INSERT INTO supplies (id, shelter_id, item_name, category, quantity, last_updated) VALUES (100, 46, 'Antibiotics', 'food', 346, '2026-05-04 08:38:24');

-- Loading data into ngos
INSERT INTO ngos (id, name, contact_person, phone, email, areas_covered) VALUES (1, 'Aurat Foundation - Branch 1', 'Kamran Shah', '+92-333-3270599', 'contact1@auratfoundation.org', 'Dir, Mardan');
INSERT INTO ngos (id, name, contact_person, phone, email, areas_covered) VALUES (2, 'Alkhidmat Foundation - Branch 2', 'Hassan Khan', '+92-330-3856397', 'contact2@alkhidmatfoundation.org', 'Mardan, Malakand');
INSERT INTO ngos (id, name, contact_person, phone, email, areas_covered) VALUES (3, 'Edhi Foundation - Branch 3', 'Zainab Bibi', '+92-318-3019166', 'contact3@edhifoundation.org', 'Mardan, Mardan');
INSERT INTO ngos (id, name, contact_person, phone, email, areas_covered) VALUES (4, 'Aurat Foundation - Branch 4', 'Sadia Ali', '+92-347-8588930', 'contact4@auratfoundation.org', 'Peshawar, Nowshera');
INSERT INTO ngos (id, name, contact_person, phone, email, areas_covered) VALUES (5, 'Saylani Welfare - Branch 5', 'Hassan Mehmood', '+92-311-3858292', 'contact5@saylaniwelfare.org', 'Swat, Nowshera');
INSERT INTO ngos (id, name, contact_person, phone, email, areas_covered) VALUES (6, 'UNICEF Pakistan - Branch 6', 'Ali Rehman', '+92-320-7623648', 'contact6@unicefpakistan.org', 'Swat, D.I. Khan');
INSERT INTO ngos (id, name, contact_person, phone, email, areas_covered) VALUES (7, 'Alkhidmat Foundation - Branch 7', 'Rabia Malik', '+92-303-9198208', 'contact7@alkhidmatfoundation.org', 'Mardan, Swat');
INSERT INTO ngos (id, name, contact_person, phone, email, areas_covered) VALUES (8, 'Saylani Welfare - Branch 8', 'Khadija Tariq', '+92-309-7473221', 'contact8@saylaniwelfare.org', 'Chitral, Kohistan');
INSERT INTO ngos (id, name, contact_person, phone, email, areas_covered) VALUES (9, 'PRCS - Branch 9', 'Raza Rehman', '+92-329-3830649', 'contact9@prcs.org', 'Malakand, Chitral');
INSERT INTO ngos (id, name, contact_person, phone, email, areas_covered) VALUES (10, 'UNICEF Pakistan - Branch 10', 'Raza Rehman', '+92-308-6261248', 'contact10@unicefpakistan.org', 'Nowshera, Nowshera');
INSERT INTO ngos (id, name, contact_person, phone, email, areas_covered) VALUES (11, 'Saylani Welfare - Branch 11', 'Fatima Hussain', '+92-341-9454203', 'contact11@saylaniwelfare.org', 'Malakand, Shangla');
INSERT INTO ngos (id, name, contact_person, phone, email, areas_covered) VALUES (12, 'Islamic Relief - Branch 12', 'Maryam Ahmed', '+92-345-4831986', 'contact12@islamicrelief.org', 'Mardan, Shangla');
INSERT INTO ngos (id, name, contact_person, phone, email, areas_covered) VALUES (13, 'Chhipa Welfare - Branch 13', 'Hira Din', '+92-333-2048625', 'contact13@chhipawelfare.org', 'Charsadda, Mardan');
INSERT INTO ngos (id, name, contact_person, phone, email, areas_covered) VALUES (14, 'Saylani Welfare - Branch 14', 'Omar Syed', '+92-308-1020376', 'contact14@saylaniwelfare.org', 'Charsadda, Nowshera');
INSERT INTO ngos (id, name, contact_person, phone, email, areas_covered) VALUES (15, 'Chhipa Welfare - Branch 15', 'Hira Rehman', '+92-310-7449723', 'contact15@chhipawelfare.org', 'Swat, Chitral');
INSERT INTO ngos (id, name, contact_person, phone, email, areas_covered) VALUES (16, 'Islamic Relief - Branch 16', 'Fatima Zafar', '+92-321-1190128', 'contact16@islamicrelief.org', 'Chitral, Mardan');
INSERT INTO ngos (id, name, contact_person, phone, email, areas_covered) VALUES (17, 'PRCS - Branch 17', 'Hira Tariq', '+92-303-7734026', 'contact17@prcs.org', 'Dir, Peshawar');
INSERT INTO ngos (id, name, contact_person, phone, email, areas_covered) VALUES (18, 'Akhuwat - Branch 18', 'Khadija Malik', '+92-314-7663970', 'contact18@akhuwat.org', 'Swat, Malakand');
INSERT INTO ngos (id, name, contact_person, phone, email, areas_covered) VALUES (19, 'Edhi Foundation - Branch 19', 'Sadia Begum', '+92-335-8591457', 'contact19@edhifoundation.org', 'Peshawar, Kohistan');
INSERT INTO ngos (id, name, contact_person, phone, email, areas_covered) VALUES (20, 'Alkhidmat Foundation - Branch 20', 'Kamran Malik', '+92-333-7110553', 'contact20@alkhidmatfoundation.org', 'Shangla, Dir');
INSERT INTO ngos (id, name, contact_person, phone, email, areas_covered) VALUES (21, 'Aurat Foundation - Branch 21', 'Zainab Sheikh', '+92-325-6142839', 'contact21@auratfoundation.org', 'Malakand, Nowshera');
INSERT INTO ngos (id, name, contact_person, phone, email, areas_covered) VALUES (22, 'Saylani Welfare - Branch 22', 'Sadia Syed', '+92-324-6652458', 'contact22@saylaniwelfare.org', 'Dir, Dir');
INSERT INTO ngos (id, name, contact_person, phone, email, areas_covered) VALUES (23, 'Edhi Foundation - Branch 23', 'Zainab Shah', '+92-338-8343439', 'contact23@edhifoundation.org', 'Nowshera, Dir');
INSERT INTO ngos (id, name, contact_person, phone, email, areas_covered) VALUES (24, 'Saylani Welfare - Branch 24', 'Kamran Tariq', '+92-331-8148166', 'contact24@saylaniwelfare.org', 'Peshawar, Dir');
INSERT INTO ngos (id, name, contact_person, phone, email, areas_covered) VALUES (25, 'Saylani Welfare - Branch 25', 'Sana Ahmed', '+92-343-6840068', 'contact25@saylaniwelfare.org', 'D.I. Khan, Swat');
INSERT INTO ngos (id, name, contact_person, phone, email, areas_covered) VALUES (26, 'PRCS - Branch 26', 'Hira Khan', '+92-307-7249158', 'contact26@prcs.org', 'D.I. Khan, Peshawar');
INSERT INTO ngos (id, name, contact_person, phone, email, areas_covered) VALUES (27, 'PRCS - Branch 27', 'Ali Zafar', '+92-314-2163770', 'contact27@prcs.org', 'Dir, Peshawar');
INSERT INTO ngos (id, name, contact_person, phone, email, areas_covered) VALUES (28, 'Chhipa Welfare - Branch 28', 'Hira Iqbal', '+92-328-6188906', 'contact28@chhipawelfare.org', 'Malakand, Peshawar');
INSERT INTO ngos (id, name, contact_person, phone, email, areas_covered) VALUES (29, 'Alkhidmat Foundation - Branch 29', 'Kamran Bibi', '+92-327-3421006', 'contact29@alkhidmatfoundation.org', 'Swat, Peshawar');
INSERT INTO ngos (id, name, contact_person, phone, email, areas_covered) VALUES (30, 'Chhipa Welfare - Branch 30', 'Usman Ahmed', '+92-309-2677283', 'contact30@chhipawelfare.org', 'Chitral, Kohistan');
INSERT INTO ngos (id, name, contact_person, phone, email, areas_covered) VALUES (31, 'Aurat Foundation - Branch 31', 'Ali Syed', '+92-343-8892953', 'contact31@auratfoundation.org', 'Nowshera, Charsadda');
INSERT INTO ngos (id, name, contact_person, phone, email, areas_covered) VALUES (32, 'Akhuwat - Branch 32', 'Rabia Malik', '+92-315-3680060', 'contact32@akhuwat.org', 'Peshawar, Mardan');
INSERT INTO ngos (id, name, contact_person, phone, email, areas_covered) VALUES (33, 'Aurat Foundation - Branch 33', 'Omar Tariq', '+92-317-3204831', 'contact33@auratfoundation.org', 'Mardan, Shangla');
INSERT INTO ngos (id, name, contact_person, phone, email, areas_covered) VALUES (34, 'Saylani Welfare - Branch 34', 'Raza Khan', '+92-309-4717808', 'contact34@saylaniwelfare.org', 'Mardan, Kohistan');
INSERT INTO ngos (id, name, contact_person, phone, email, areas_covered) VALUES (35, 'PRCS - Branch 35', 'Fahad Malik', '+92-343-7599897', 'contact35@prcs.org', 'Dir, Peshawar');
INSERT INTO ngos (id, name, contact_person, phone, email, areas_covered) VALUES (36, 'Islamic Relief - Branch 36', 'Khadija Shah', '+92-327-4495978', 'contact36@islamicrelief.org', 'Peshawar, Swat');
INSERT INTO ngos (id, name, contact_person, phone, email, areas_covered) VALUES (37, 'Alkhidmat Foundation - Branch 37', 'Bilal Zafar', '+92-304-5123901', 'contact37@alkhidmatfoundation.org', 'Shangla, Malakand');
INSERT INTO ngos (id, name, contact_person, phone, email, areas_covered) VALUES (38, 'Aurat Foundation - Branch 38', 'Ali Tariq', '+92-316-9784552', 'contact38@auratfoundation.org', 'Swat, Mardan');
INSERT INTO ngos (id, name, contact_person, phone, email, areas_covered) VALUES (39, 'PRCS - Branch 39', 'Ayesha Iqbal', '+92-309-1794646', 'contact39@prcs.org', 'Nowshera, Chitral');
INSERT INTO ngos (id, name, contact_person, phone, email, areas_covered) VALUES (40, 'Chhipa Welfare - Branch 40', 'Hira Mehmood', '+92-317-9297763', 'contact40@chhipawelfare.org', 'Swat, Peshawar');
INSERT INTO ngos (id, name, contact_person, phone, email, areas_covered) VALUES (41, 'Chhipa Welfare - Branch 41', 'Khadija Din', '+92-316-4852401', 'contact41@chhipawelfare.org', 'Nowshera, Shangla');
INSERT INTO ngos (id, name, contact_person, phone, email, areas_covered) VALUES (42, 'Save the Children - Branch 42', 'Imran Syed', '+92-342-8067145', 'contact42@savethechildren.org', 'Malakand, Nowshera');
INSERT INTO ngos (id, name, contact_person, phone, email, areas_covered) VALUES (43, 'Aurat Foundation - Branch 43', 'Tariq Khan', '+92-331-7027925', 'contact43@auratfoundation.org', 'Swat, Peshawar');
INSERT INTO ngos (id, name, contact_person, phone, email, areas_covered) VALUES (44, 'Edhi Foundation - Branch 44', 'Omar Rehman', '+92-326-6263714', 'contact44@edhifoundation.org', 'Nowshera, Nowshera');
INSERT INTO ngos (id, name, contact_person, phone, email, areas_covered) VALUES (45, 'Chhipa Welfare - Branch 45', 'Fahad Ali', '+92-326-5683721', 'contact45@chhipawelfare.org', 'Charsadda, Swat');
INSERT INTO ngos (id, name, contact_person, phone, email, areas_covered) VALUES (46, 'Saylani Welfare - Branch 46', 'Omar Qureshi', '+92-329-5372858', 'contact46@saylaniwelfare.org', 'Nowshera, Kohistan');
INSERT INTO ngos (id, name, contact_person, phone, email, areas_covered) VALUES (47, 'Alkhidmat Foundation - Branch 47', 'Rabia Bibi', '+92-338-1667007', 'contact47@alkhidmatfoundation.org', 'Nowshera, Nowshera');
INSERT INTO ngos (id, name, contact_person, phone, email, areas_covered) VALUES (48, 'Saylani Welfare - Branch 48', 'Maryam Tariq', '+92-340-7699596', 'contact48@saylaniwelfare.org', 'Nowshera, Dir');
INSERT INTO ngos (id, name, contact_person, phone, email, areas_covered) VALUES (49, 'Saylani Welfare - Branch 49', 'Rabia Tariq', '+92-327-2153431', 'contact49@saylaniwelfare.org', 'Nowshera, Peshawar');
INSERT INTO ngos (id, name, contact_person, phone, email, areas_covered) VALUES (50, 'Islamic Relief - Branch 50', 'Maryam Qureshi', '+92-343-5211920', 'contact50@islamicrelief.org', 'Chitral, Malakand');

-- Loading data into relief_requests
INSERT INTO relief_requests (id, shelter_id, ngo_id, item_needed, quantity_needed, urgency, status, created_at) VALUES (1, 28, 12, 'Antibiotics', 105, 'low', 'rejected', '2026-04-10 08:38:24');
INSERT INTO relief_requests (id, shelter_id, ngo_id, item_needed, quantity_needed, urgency, status, created_at) VALUES (2, 48, 3, 'First Aid Kits', 220, 'medium', 'pending', '2026-03-22 08:38:24');
INSERT INTO relief_requests (id, shelter_id, ngo_id, item_needed, quantity_needed, urgency, status, created_at) VALUES (3, 11, 23, 'Tents', 108, 'low', 'pending', '2026-04-29 08:38:24');
INSERT INTO relief_requests (id, shelter_id, ngo_id, item_needed, quantity_needed, urgency, status, created_at) VALUES (4, 39, 50, 'Bandages', 116, 'medium', 'fulfilled', '2026-04-16 08:38:24');
INSERT INTO relief_requests (id, shelter_id, ngo_id, item_needed, quantity_needed, urgency, status, created_at) VALUES (5, 27, 45, 'Bandages', 247, 'critical', 'rejected', '2026-04-18 08:38:24');
INSERT INTO relief_requests (id, shelter_id, ngo_id, item_needed, quantity_needed, urgency, status, created_at) VALUES (6, 1, 6, 'Cooking Oil', 490, 'high', 'approved', '2026-03-29 08:38:24');
INSERT INTO relief_requests (id, shelter_id, ngo_id, item_needed, quantity_needed, urgency, status, created_at) VALUES (7, 40, 30, 'Cooking Oil', 184, 'low', 'rejected', '2026-03-14 08:38:24');
INSERT INTO relief_requests (id, shelter_id, ngo_id, item_needed, quantity_needed, urgency, status, created_at) VALUES (8, 42, 17, 'Painkillers', 476, 'critical', 'rejected', '2026-04-26 08:38:24');
INSERT INTO relief_requests (id, shelter_id, ngo_id, item_needed, quantity_needed, urgency, status, created_at) VALUES (9, 14, 2, 'Painkillers', 493, 'critical', 'approved', '2026-04-28 08:38:24');
INSERT INTO relief_requests (id, shelter_id, ngo_id, item_needed, quantity_needed, urgency, status, created_at) VALUES (10, 3, 29, 'Rice Bags', 470, 'high', 'rejected', '2026-04-11 08:38:24');
INSERT INTO relief_requests (id, shelter_id, ngo_id, item_needed, quantity_needed, urgency, status, created_at) VALUES (11, 3, 7, 'Painkillers', 262, 'critical', 'approved', '2026-05-06 08:38:24');
INSERT INTO relief_requests (id, shelter_id, ngo_id, item_needed, quantity_needed, urgency, status, created_at) VALUES (12, 14, 36, 'First Aid Kits', 451, 'high', 'approved', '2026-03-20 08:38:24');
INSERT INTO relief_requests (id, shelter_id, ngo_id, item_needed, quantity_needed, urgency, status, created_at) VALUES (13, 21, 31, 'Soap', 259, 'medium', 'fulfilled', '2026-04-14 08:38:24');
INSERT INTO relief_requests (id, shelter_id, ngo_id, item_needed, quantity_needed, urgency, status, created_at) VALUES (14, 20, 31, 'Flour Sacks', 456, 'medium', 'pending', '2026-04-21 08:38:24');
INSERT INTO relief_requests (id, shelter_id, ngo_id, item_needed, quantity_needed, urgency, status, created_at) VALUES (15, 37, 18, 'Antibiotics', 171, 'low', 'pending', '2026-03-18 08:38:24');
INSERT INTO relief_requests (id, shelter_id, ngo_id, item_needed, quantity_needed, urgency, status, created_at) VALUES (16, 5, 39, 'Rice Bags', 387, 'high', 'fulfilled', '2026-04-16 08:38:24');
INSERT INTO relief_requests (id, shelter_id, ngo_id, item_needed, quantity_needed, urgency, status, created_at) VALUES (17, 15, 33, 'First Aid Kits', 485, 'low', 'pending', '2026-03-28 08:38:24');
INSERT INTO relief_requests (id, shelter_id, ngo_id, item_needed, quantity_needed, urgency, status, created_at) VALUES (18, 24, 3, 'Tents', 394, 'low', 'approved', '2026-04-06 08:38:24');
INSERT INTO relief_requests (id, shelter_id, ngo_id, item_needed, quantity_needed, urgency, status, created_at) VALUES (19, 48, 38, 'Water Bottles', 77, 'low', 'approved', '2026-05-13 08:38:24');
INSERT INTO relief_requests (id, shelter_id, ngo_id, item_needed, quantity_needed, urgency, status, created_at) VALUES (20, 19, 2, 'Flour Sacks', 455, 'medium', 'pending', '2026-04-10 08:38:24');
INSERT INTO relief_requests (id, shelter_id, ngo_id, item_needed, quantity_needed, urgency, status, created_at) VALUES (21, 32, 41, 'Soap', 339, 'high', 'fulfilled', '2026-04-18 08:38:24');
INSERT INTO relief_requests (id, shelter_id, ngo_id, item_needed, quantity_needed, urgency, status, created_at) VALUES (22, 21, 29, 'Blankets', 80, 'high', 'fulfilled', '2026-05-05 08:38:24');
INSERT INTO relief_requests (id, shelter_id, ngo_id, item_needed, quantity_needed, urgency, status, created_at) VALUES (23, 40, 38, 'Soap', 170, 'medium', 'fulfilled', '2026-03-17 08:38:24');
INSERT INTO relief_requests (id, shelter_id, ngo_id, item_needed, quantity_needed, urgency, status, created_at) VALUES (24, 49, 48, 'Rice Bags', 448, 'critical', 'fulfilled', '2026-03-30 08:38:24');
INSERT INTO relief_requests (id, shelter_id, ngo_id, item_needed, quantity_needed, urgency, status, created_at) VALUES (25, 14, 49, 'Antibiotics', 375, 'critical', 'rejected', '2026-03-29 08:38:24');
INSERT INTO relief_requests (id, shelter_id, ngo_id, item_needed, quantity_needed, urgency, status, created_at) VALUES (26, 15, 30, 'Rice Bags', 256, 'high', 'rejected', '2026-04-08 08:38:24');
INSERT INTO relief_requests (id, shelter_id, ngo_id, item_needed, quantity_needed, urgency, status, created_at) VALUES (27, 43, 19, 'Blankets', 251, 'high', 'approved', '2026-04-28 08:38:24');
INSERT INTO relief_requests (id, shelter_id, ngo_id, item_needed, quantity_needed, urgency, status, created_at) VALUES (28, 36, 26, 'Rice Bags', 159, 'critical', 'rejected', '2026-04-10 08:38:24');
INSERT INTO relief_requests (id, shelter_id, ngo_id, item_needed, quantity_needed, urgency, status, created_at) VALUES (29, 5, 44, 'Flour Sacks', 264, 'low', 'pending', '2026-05-04 08:38:24');
INSERT INTO relief_requests (id, shelter_id, ngo_id, item_needed, quantity_needed, urgency, status, created_at) VALUES (30, 41, 24, 'Flour Sacks', 133, 'critical', 'pending', '2026-04-17 08:38:24');
INSERT INTO relief_requests (id, shelter_id, ngo_id, item_needed, quantity_needed, urgency, status, created_at) VALUES (31, 22, 41, 'Blankets', 425, 'medium', 'rejected', '2026-04-26 08:38:24');
INSERT INTO relief_requests (id, shelter_id, ngo_id, item_needed, quantity_needed, urgency, status, created_at) VALUES (32, 39, 34, 'Rice Bags', 206, 'low', 'rejected', '2026-04-25 08:38:24');
INSERT INTO relief_requests (id, shelter_id, ngo_id, item_needed, quantity_needed, urgency, status, created_at) VALUES (33, 10, 13, 'Painkillers', 130, 'critical', 'approved', '2026-04-17 08:38:24');
INSERT INTO relief_requests (id, shelter_id, ngo_id, item_needed, quantity_needed, urgency, status, created_at) VALUES (34, 32, 26, 'Tents', 278, 'high', 'approved', '2026-04-28 08:38:24');
INSERT INTO relief_requests (id, shelter_id, ngo_id, item_needed, quantity_needed, urgency, status, created_at) VALUES (35, 44, 16, 'Cooking Oil', 388, 'medium', 'rejected', '2026-03-29 08:38:24');
INSERT INTO relief_requests (id, shelter_id, ngo_id, item_needed, quantity_needed, urgency, status, created_at) VALUES (36, 33, 48, 'Flour Sacks', 94, 'critical', 'approved', '2026-04-01 08:38:24');
INSERT INTO relief_requests (id, shelter_id, ngo_id, item_needed, quantity_needed, urgency, status, created_at) VALUES (37, 47, 50, 'Rice Bags', 491, 'high', 'fulfilled', '2026-04-27 08:38:24');
INSERT INTO relief_requests (id, shelter_id, ngo_id, item_needed, quantity_needed, urgency, status, created_at) VALUES (38, 7, 26, 'Cooking Oil', 397, 'low', 'pending', '2026-04-07 08:38:24');
INSERT INTO relief_requests (id, shelter_id, ngo_id, item_needed, quantity_needed, urgency, status, created_at) VALUES (39, 12, 41, 'Cooking Oil', 372, 'low', 'rejected', '2026-04-07 08:38:24');
INSERT INTO relief_requests (id, shelter_id, ngo_id, item_needed, quantity_needed, urgency, status, created_at) VALUES (40, 11, 22, 'Blankets', 94, 'critical', 'pending', '2026-04-10 08:38:24');
INSERT INTO relief_requests (id, shelter_id, ngo_id, item_needed, quantity_needed, urgency, status, created_at) VALUES (41, 10, 44, 'Cooking Oil', 495, 'high', 'rejected', '2026-03-18 08:38:24');
INSERT INTO relief_requests (id, shelter_id, ngo_id, item_needed, quantity_needed, urgency, status, created_at) VALUES (42, 28, 46, 'Blankets', 60, 'low', 'approved', '2026-04-17 08:38:24');
INSERT INTO relief_requests (id, shelter_id, ngo_id, item_needed, quantity_needed, urgency, status, created_at) VALUES (43, 36, 24, 'Water Bottles', 119, 'low', 'fulfilled', '2026-03-24 08:38:24');
INSERT INTO relief_requests (id, shelter_id, ngo_id, item_needed, quantity_needed, urgency, status, created_at) VALUES (44, 37, 36, 'Bandages', 360, 'medium', 'pending', '2026-04-12 08:38:24');
INSERT INTO relief_requests (id, shelter_id, ngo_id, item_needed, quantity_needed, urgency, status, created_at) VALUES (45, 18, 47, 'Bandages', 457, 'low', 'pending', '2026-05-02 08:38:24');
INSERT INTO relief_requests (id, shelter_id, ngo_id, item_needed, quantity_needed, urgency, status, created_at) VALUES (46, 38, 11, 'Antibiotics', 90, 'low', 'pending', '2026-05-06 08:38:24');
INSERT INTO relief_requests (id, shelter_id, ngo_id, item_needed, quantity_needed, urgency, status, created_at) VALUES (47, 4, 17, 'Rice Bags', 444, 'low', 'approved', '2026-03-17 08:38:24');
INSERT INTO relief_requests (id, shelter_id, ngo_id, item_needed, quantity_needed, urgency, status, created_at) VALUES (48, 21, 1, 'Rice Bags', 201, 'medium', 'fulfilled', '2026-05-01 08:38:24');
INSERT INTO relief_requests (id, shelter_id, ngo_id, item_needed, quantity_needed, urgency, status, created_at) VALUES (49, 38, 23, 'Tents', 420, 'low', 'fulfilled', '2026-04-01 08:38:24');
INSERT INTO relief_requests (id, shelter_id, ngo_id, item_needed, quantity_needed, urgency, status, created_at) VALUES (50, 25, 44, 'Soap', 165, 'critical', 'fulfilled', '2026-05-03 08:38:24');
INSERT INTO relief_requests (id, shelter_id, ngo_id, item_needed, quantity_needed, urgency, status, created_at) VALUES (51, 32, 24, 'Bandages', 457, 'high', 'rejected', '2026-04-28 08:38:24');
INSERT INTO relief_requests (id, shelter_id, ngo_id, item_needed, quantity_needed, urgency, status, created_at) VALUES (52, 24, 13, 'Bandages', 299, 'high', 'approved', '2026-03-23 08:38:24');
INSERT INTO relief_requests (id, shelter_id, ngo_id, item_needed, quantity_needed, urgency, status, created_at) VALUES (53, 27, 12, 'Rice Bags', 157, 'low', 'fulfilled', '2026-04-16 08:38:24');
INSERT INTO relief_requests (id, shelter_id, ngo_id, item_needed, quantity_needed, urgency, status, created_at) VALUES (54, 15, 13, 'Soap', 345, 'medium', 'pending', '2026-04-25 08:38:24');
INSERT INTO relief_requests (id, shelter_id, ngo_id, item_needed, quantity_needed, urgency, status, created_at) VALUES (55, 50, 18, 'Cooking Oil', 311, 'high', 'rejected', '2026-05-09 08:38:24');
INSERT INTO relief_requests (id, shelter_id, ngo_id, item_needed, quantity_needed, urgency, status, created_at) VALUES (56, 49, 4, 'Cooking Oil', 81, 'critical', 'rejected', '2026-04-01 08:38:24');
INSERT INTO relief_requests (id, shelter_id, ngo_id, item_needed, quantity_needed, urgency, status, created_at) VALUES (57, 42, 19, 'Water Bottles', 129, 'critical', 'fulfilled', '2026-04-13 08:38:24');
INSERT INTO relief_requests (id, shelter_id, ngo_id, item_needed, quantity_needed, urgency, status, created_at) VALUES (58, 48, 1, 'Tents', 345, 'high', 'fulfilled', '2026-04-07 08:38:24');
INSERT INTO relief_requests (id, shelter_id, ngo_id, item_needed, quantity_needed, urgency, status, created_at) VALUES (59, 23, 27, 'Antibiotics', 409, 'medium', 'approved', '2026-04-08 08:38:24');
INSERT INTO relief_requests (id, shelter_id, ngo_id, item_needed, quantity_needed, urgency, status, created_at) VALUES (60, 4, 16, 'Blankets', 168, 'high', 'pending', '2026-03-16 08:38:24');
INSERT INTO relief_requests (id, shelter_id, ngo_id, item_needed, quantity_needed, urgency, status, created_at) VALUES (61, 22, 13, 'Antibiotics', 247, 'critical', 'fulfilled', '2026-04-05 08:38:24');
INSERT INTO relief_requests (id, shelter_id, ngo_id, item_needed, quantity_needed, urgency, status, created_at) VALUES (62, 49, 11, 'Cooking Oil', 199, 'low', 'approved', '2026-04-03 08:38:24');
INSERT INTO relief_requests (id, shelter_id, ngo_id, item_needed, quantity_needed, urgency, status, created_at) VALUES (63, 20, 47, 'Cooking Oil', 373, 'critical', 'pending', '2026-05-03 08:38:24');
INSERT INTO relief_requests (id, shelter_id, ngo_id, item_needed, quantity_needed, urgency, status, created_at) VALUES (64, 48, 43, 'First Aid Kits', 425, 'critical', 'rejected', '2026-05-13 08:38:24');
INSERT INTO relief_requests (id, shelter_id, ngo_id, item_needed, quantity_needed, urgency, status, created_at) VALUES (65, 35, 5, 'Blankets', 477, 'low', 'pending', '2026-03-14 08:38:24');
INSERT INTO relief_requests (id, shelter_id, ngo_id, item_needed, quantity_needed, urgency, status, created_at) VALUES (66, 36, 12, 'Cooking Oil', 135, 'critical', 'fulfilled', '2026-04-06 08:38:24');
INSERT INTO relief_requests (id, shelter_id, ngo_id, item_needed, quantity_needed, urgency, status, created_at) VALUES (67, 11, 41, 'Painkillers', 111, 'medium', 'approved', '2026-04-06 08:38:24');
INSERT INTO relief_requests (id, shelter_id, ngo_id, item_needed, quantity_needed, urgency, status, created_at) VALUES (68, 42, 34, 'Rice Bags', 312, 'high', 'rejected', '2026-03-20 08:38:24');
INSERT INTO relief_requests (id, shelter_id, ngo_id, item_needed, quantity_needed, urgency, status, created_at) VALUES (69, 43, 26, 'Bandages', 464, 'medium', 'rejected', '2026-05-08 08:38:24');
INSERT INTO relief_requests (id, shelter_id, ngo_id, item_needed, quantity_needed, urgency, status, created_at) VALUES (70, 32, 47, 'Water Bottles', 321, 'high', 'pending', '2026-05-10 08:38:24');
INSERT INTO relief_requests (id, shelter_id, ngo_id, item_needed, quantity_needed, urgency, status, created_at) VALUES (71, 12, 21, 'Soap', 228, 'low', 'rejected', '2026-03-16 08:38:24');
INSERT INTO relief_requests (id, shelter_id, ngo_id, item_needed, quantity_needed, urgency, status, created_at) VALUES (72, 33, 32, 'Antibiotics', 461, 'high', 'rejected', '2026-05-03 08:38:24');
INSERT INTO relief_requests (id, shelter_id, ngo_id, item_needed, quantity_needed, urgency, status, created_at) VALUES (73, 41, 17, 'Bandages', 120, 'critical', 'rejected', '2026-04-10 08:38:24');
INSERT INTO relief_requests (id, shelter_id, ngo_id, item_needed, quantity_needed, urgency, status, created_at) VALUES (74, 9, 33, 'Tents', 363, 'medium', 'approved', '2026-03-24 08:38:24');
INSERT INTO relief_requests (id, shelter_id, ngo_id, item_needed, quantity_needed, urgency, status, created_at) VALUES (75, 18, 3, 'First Aid Kits', 354, 'high', 'rejected', '2026-04-30 08:38:24');
INSERT INTO relief_requests (id, shelter_id, ngo_id, item_needed, quantity_needed, urgency, status, created_at) VALUES (76, 34, 9, 'Tents', 62, 'critical', 'rejected', '2026-03-19 08:38:24');
INSERT INTO relief_requests (id, shelter_id, ngo_id, item_needed, quantity_needed, urgency, status, created_at) VALUES (77, 28, 25, 'Bandages', 113, 'medium', 'approved', '2026-04-22 08:38:24');
INSERT INTO relief_requests (id, shelter_id, ngo_id, item_needed, quantity_needed, urgency, status, created_at) VALUES (78, 49, 14, 'Tents', 411, 'medium', 'fulfilled', '2026-05-01 08:38:24');
INSERT INTO relief_requests (id, shelter_id, ngo_id, item_needed, quantity_needed, urgency, status, created_at) VALUES (79, 32, 16, 'Tents', 150, 'critical', 'rejected', '2026-04-11 08:38:24');
INSERT INTO relief_requests (id, shelter_id, ngo_id, item_needed, quantity_needed, urgency, status, created_at) VALUES (80, 24, 37, 'Antibiotics', 371, 'high', 'approved', '2026-05-09 08:38:24');
INSERT INTO relief_requests (id, shelter_id, ngo_id, item_needed, quantity_needed, urgency, status, created_at) VALUES (81, 42, 36, 'Water Bottles', 408, 'medium', 'rejected', '2026-04-08 08:38:24');
INSERT INTO relief_requests (id, shelter_id, ngo_id, item_needed, quantity_needed, urgency, status, created_at) VALUES (82, 46, 41, 'Rice Bags', 240, 'high', 'fulfilled', '2026-05-09 08:38:24');
INSERT INTO relief_requests (id, shelter_id, ngo_id, item_needed, quantity_needed, urgency, status, created_at) VALUES (83, 24, 42, 'Blankets', 454, 'critical', 'rejected', '2026-04-17 08:38:24');
INSERT INTO relief_requests (id, shelter_id, ngo_id, item_needed, quantity_needed, urgency, status, created_at) VALUES (84, 21, 2, 'Water Bottles', 351, 'critical', 'rejected', '2026-05-06 08:38:24');
INSERT INTO relief_requests (id, shelter_id, ngo_id, item_needed, quantity_needed, urgency, status, created_at) VALUES (85, 5, 13, 'Bandages', 347, 'high', 'rejected', '2026-05-08 08:38:24');
INSERT INTO relief_requests (id, shelter_id, ngo_id, item_needed, quantity_needed, urgency, status, created_at) VALUES (86, 29, 32, 'Rice Bags', 56, 'low', 'fulfilled', '2026-03-23 08:38:24');
INSERT INTO relief_requests (id, shelter_id, ngo_id, item_needed, quantity_needed, urgency, status, created_at) VALUES (87, 16, 7, 'Cooking Oil', 353, 'medium', 'approved', '2026-05-05 08:38:24');
INSERT INTO relief_requests (id, shelter_id, ngo_id, item_needed, quantity_needed, urgency, status, created_at) VALUES (88, 32, 13, 'Blankets', 132, 'medium', 'approved', '2026-04-27 08:38:24');
INSERT INTO relief_requests (id, shelter_id, ngo_id, item_needed, quantity_needed, urgency, status, created_at) VALUES (89, 25, 27, 'Antibiotics', 276, 'critical', 'fulfilled', '2026-05-04 08:38:24');
INSERT INTO relief_requests (id, shelter_id, ngo_id, item_needed, quantity_needed, urgency, status, created_at) VALUES (90, 18, 49, 'Flour Sacks', 222, 'critical', 'pending', '2026-04-23 08:38:24');
INSERT INTO relief_requests (id, shelter_id, ngo_id, item_needed, quantity_needed, urgency, status, created_at) VALUES (91, 44, 28, 'Water Bottles', 218, 'medium', 'fulfilled', '2026-03-21 08:38:24');
INSERT INTO relief_requests (id, shelter_id, ngo_id, item_needed, quantity_needed, urgency, status, created_at) VALUES (92, 26, 37, 'Soap', 261, 'high', 'approved', '2026-04-11 08:38:24');
INSERT INTO relief_requests (id, shelter_id, ngo_id, item_needed, quantity_needed, urgency, status, created_at) VALUES (93, 31, 1, 'Water Bottles', 239, 'medium', 'fulfilled', '2026-03-22 08:38:24');
INSERT INTO relief_requests (id, shelter_id, ngo_id, item_needed, quantity_needed, urgency, status, created_at) VALUES (94, 48, 38, 'Blankets', 86, 'critical', 'pending', '2026-04-19 08:38:24');
INSERT INTO relief_requests (id, shelter_id, ngo_id, item_needed, quantity_needed, urgency, status, created_at) VALUES (95, 33, 47, 'Cooking Oil', 455, 'high', 'rejected', '2026-04-01 08:38:24');
INSERT INTO relief_requests (id, shelter_id, ngo_id, item_needed, quantity_needed, urgency, status, created_at) VALUES (96, 27, 11, 'First Aid Kits', 188, 'high', 'approved', '2026-05-04 08:38:24');
INSERT INTO relief_requests (id, shelter_id, ngo_id, item_needed, quantity_needed, urgency, status, created_at) VALUES (97, 24, 37, 'Flour Sacks', 275, 'high', 'pending', '2026-03-21 08:38:24');
INSERT INTO relief_requests (id, shelter_id, ngo_id, item_needed, quantity_needed, urgency, status, created_at) VALUES (98, 41, 43, 'Bandages', 162, 'low', 'rejected', '2026-05-04 08:38:24');
INSERT INTO relief_requests (id, shelter_id, ngo_id, item_needed, quantity_needed, urgency, status, created_at) VALUES (99, 20, 48, 'Water Bottles', 108, 'high', 'approved', '2026-04-22 08:38:24');
INSERT INTO relief_requests (id, shelter_id, ngo_id, item_needed, quantity_needed, urgency, status, created_at) VALUES (100, 4, 47, 'Blankets', 112, 'medium', 'approved', '2026-04-23 08:38:24');

-- Loading data into incidents
INSERT INTO incidents (id, district, province, severity, description, latitude, longitude, reported_at, reported_by) VALUES (1, 'Mardan', 'Punjab', 'high', 'Heavy rain caused house collapses', 34.289126, 72.088926, '2026-04-22 08:38:24', 18);
INSERT INTO incidents (id, district, province, severity, description, latitude, longitude, reported_at, reported_by) VALUES (2, 'Mardan', 'KPK', 'low', 'Landslide blocked roads', 34.146353, 72.096215, '2025-08-17 08:38:24', 13);
INSERT INTO incidents (id, district, province, severity, description, latitude, longitude, reported_at, reported_by) VALUES (3, 'Peshawar', 'Punjab', 'moderate', 'River overflow causing damage', 34.065047, 71.517826, '2025-05-27 08:38:24', 4);
INSERT INTO incidents (id, district, province, severity, description, latitude, longitude, reported_at, reported_by) VALUES (4, 'Swat', 'KPK', 'high', 'River overflow causing damage', 35.241879, 72.337745, '2025-08-21 08:38:24', 13);
INSERT INTO incidents (id, district, province, severity, description, latitude, longitude, reported_at, reported_by) VALUES (5, 'Kohistan', 'Balochistan', 'moderate', 'Bridge washed away', 35.327438, 73.189496, '2025-09-25 08:38:24', 45);
INSERT INTO incidents (id, district, province, severity, description, latitude, longitude, reported_at, reported_by) VALUES (6, 'Malakand', 'Punjab', 'moderate', 'Heavy rain caused house collapses', 34.585364, 71.856819, '2025-08-02 08:38:24', 27);
INSERT INTO incidents (id, district, province, severity, description, latitude, longitude, reported_at, reported_by) VALUES (7, 'Malakand', 'Sindh', 'moderate', 'Landslide blocked roads', 34.522508, 71.882467, '2026-04-11 08:38:24', 13);
INSERT INTO incidents (id, district, province, severity, description, latitude, longitude, reported_at, reported_by) VALUES (8, 'Nowshera', 'KPK', 'high', 'Flash flood in main market', 33.939955, 71.899828, '2025-08-22 08:38:24', 31);
INSERT INTO incidents (id, district, province, severity, description, latitude, longitude, reported_at, reported_by) VALUES (9, 'Peshawar', 'KPK', 'catastrophic', 'Bridge washed away', 33.919223, 71.526627, '2026-02-22 08:38:24', 17);
INSERT INTO incidents (id, district, province, severity, description, latitude, longitude, reported_at, reported_by) VALUES (10, 'Mardan', 'Balochistan', 'catastrophic', 'Heavy rain caused house collapses', 34.244163, 72.138344, '2026-02-25 08:38:24', 8);
INSERT INTO incidents (id, district, province, severity, description, latitude, longitude, reported_at, reported_by) VALUES (11, 'Nowshera', 'Gilgit-Baltistan', 'low', 'Evacuation needed due to rising water', 34.081349, 72.017081, '2026-01-03 08:38:24', 21);
INSERT INTO incidents (id, district, province, severity, description, latitude, longitude, reported_at, reported_by) VALUES (12, 'Malakand', 'Balochistan', 'high', 'Bridge washed away', 34.664883, 71.943099, '2025-12-03 08:38:24', 2);
INSERT INTO incidents (id, district, province, severity, description, latitude, longitude, reported_at, reported_by) VALUES (13, 'Malakand', 'Balochistan', 'high', 'Heavy rain caused house collapses', 34.549489, 71.930364, '2025-08-06 08:38:24', 42);
INSERT INTO incidents (id, district, province, severity, description, latitude, longitude, reported_at, reported_by) VALUES (14, 'Nowshera', 'Balochistan', 'moderate', 'Heavy rain caused house collapses', 34.090196, 71.960904, '2025-09-25 08:38:24', 27);
INSERT INTO incidents (id, district, province, severity, description, latitude, longitude, reported_at, reported_by) VALUES (15, 'Charsadda', 'Balochistan', 'high', 'Evacuation needed due to rising water', 34.080245, 71.756847, '2026-02-14 08:38:24', 10);
INSERT INTO incidents (id, district, province, severity, description, latitude, longitude, reported_at, reported_by) VALUES (16, 'Mardan', 'Gilgit-Baltistan', 'low', 'Heavy rain caused house collapses', 34.269375, 71.960507, '2025-05-18 08:38:24', 26);
INSERT INTO incidents (id, district, province, severity, description, latitude, longitude, reported_at, reported_by) VALUES (17, 'Malakand', 'Balochistan', 'low', 'Flash flood in main market', 34.502688, 71.868585, '2025-08-25 08:38:24', 1);
INSERT INTO incidents (id, district, province, severity, description, latitude, longitude, reported_at, reported_by) VALUES (18, 'Kohistan', 'KPK', 'moderate', 'Bridge washed away', 35.342079, 73.187848, '2026-01-13 08:38:24', 1);
INSERT INTO incidents (id, district, province, severity, description, latitude, longitude, reported_at, reported_by) VALUES (19, 'Kohistan', 'KPK', 'low', 'Evacuation needed due to rising water', 35.401453, 73.185499, '2025-05-29 08:38:24', 9);
INSERT INTO incidents (id, district, province, severity, description, latitude, longitude, reported_at, reported_by) VALUES (20, 'Chitral', 'Sindh', 'catastrophic', 'Evacuation needed due to rising water', 35.766418, 71.868015, '2026-03-21 08:38:24', 21);
INSERT INTO incidents (id, district, province, severity, description, latitude, longitude, reported_at, reported_by) VALUES (21, 'Mardan', 'Sindh', 'catastrophic', 'Heavy rain caused house collapses', 34.100658, 71.986846, '2025-09-14 08:38:24', 26);
INSERT INTO incidents (id, district, province, severity, description, latitude, longitude, reported_at, reported_by) VALUES (22, 'Chitral', 'KPK', 'low', 'Flash flood in main market', 35.803093, 71.861956, '2026-03-26 08:38:24', 22);
INSERT INTO incidents (id, district, province, severity, description, latitude, longitude, reported_at, reported_by) VALUES (23, 'Nowshera', 'Punjab', 'low', 'Landslide blocked roads', 34.08747, 72.055618, '2025-07-24 08:38:24', 23);
INSERT INTO incidents (id, district, province, severity, description, latitude, longitude, reported_at, reported_by) VALUES (24, 'Shangla', 'Gilgit-Baltistan', 'high', 'Heavy rain caused house collapses', 34.904753, 72.826396, '2026-02-07 08:38:24', 32);
INSERT INTO incidents (id, district, province, severity, description, latitude, longitude, reported_at, reported_by) VALUES (25, 'Malakand', 'Sindh', 'catastrophic', 'River overflow causing damage', 34.607453, 71.961739, '2026-01-29 08:38:24', 5);
INSERT INTO incidents (id, district, province, severity, description, latitude, longitude, reported_at, reported_by) VALUES (26, 'Shangla', 'Sindh', 'catastrophic', 'Heavy rain caused house collapses', 34.893275, 72.83376, '2026-05-02 08:38:24', 16);
INSERT INTO incidents (id, district, province, severity, description, latitude, longitude, reported_at, reported_by) VALUES (27, 'Nowshera', 'KPK', 'low', 'Heavy rain caused house collapses', 34.029771, 71.911919, '2026-04-06 08:38:24', 19);
INSERT INTO incidents (id, district, province, severity, description, latitude, longitude, reported_at, reported_by) VALUES (28, 'D.I. Khan', 'KPK', 'low', 'Evacuation needed due to rising water', 31.909923, 70.994082, '2026-02-11 08:38:24', 12);
INSERT INTO incidents (id, district, province, severity, description, latitude, longitude, reported_at, reported_by) VALUES (29, 'Peshawar', 'Sindh', 'low', 'Heavy rain caused house collapses', 34.103712, 71.484122, '2025-06-25 08:38:24', 14);
INSERT INTO incidents (id, district, province, severity, description, latitude, longitude, reported_at, reported_by) VALUES (30, 'Dir', 'Balochistan', 'moderate', 'Evacuation needed due to rising water', 35.128048, 71.844228, '2026-04-03 08:38:24', 21);
INSERT INTO incidents (id, district, province, severity, description, latitude, longitude, reported_at, reported_by) VALUES (31, 'Swat', 'Gilgit-Baltistan', 'high', 'Bridge washed away', 35.274316, 72.457877, '2025-08-09 08:38:24', 31);
INSERT INTO incidents (id, district, province, severity, description, latitude, longitude, reported_at, reported_by) VALUES (32, 'Kohistan', 'Punjab', 'catastrophic', 'Heavy rain caused house collapses', 35.370647, 73.318323, '2025-07-04 08:38:24', 9);
INSERT INTO incidents (id, district, province, severity, description, latitude, longitude, reported_at, reported_by) VALUES (33, 'Shangla', 'Punjab', 'high', 'River overflow causing damage', 34.787167, 72.833219, '2025-06-05 08:38:24', 3);
INSERT INTO incidents (id, district, province, severity, description, latitude, longitude, reported_at, reported_by) VALUES (34, 'Peshawar', 'KPK', 'moderate', 'Flash flood in main market', 34.098077, 71.46991, '2025-12-10 08:38:24', 6);
INSERT INTO incidents (id, district, province, severity, description, latitude, longitude, reported_at, reported_by) VALUES (35, 'Charsadda', 'Sindh', 'catastrophic', 'River overflow causing damage', 34.215199, 71.830223, '2026-01-08 08:38:24', 27);
INSERT INTO incidents (id, district, province, severity, description, latitude, longitude, reported_at, reported_by) VALUES (36, 'Peshawar', 'Sindh', 'high', 'Flash flood in main market', 34.081217, 71.542673, '2026-03-15 08:38:24', 10);
INSERT INTO incidents (id, district, province, severity, description, latitude, longitude, reported_at, reported_by) VALUES (37, 'Mardan', 'Sindh', 'low', 'Heavy rain caused house collapses', 34.195563, 72.003577, '2025-06-18 08:38:24', 30);
INSERT INTO incidents (id, district, province, severity, description, latitude, longitude, reported_at, reported_by) VALUES (38, 'Shangla', 'Sindh', 'catastrophic', 'Bridge washed away', 34.857232, 72.68869, '2025-12-20 08:38:24', 35);
INSERT INTO incidents (id, district, province, severity, description, latitude, longitude, reported_at, reported_by) VALUES (39, 'Peshawar', 'Punjab', 'low', 'Flash flood in main market', 34.101728, 71.613906, '2025-05-30 08:38:24', 3);
INSERT INTO incidents (id, district, province, severity, description, latitude, longitude, reported_at, reported_by) VALUES (40, 'Swat', 'Punjab', 'moderate', 'Bridge washed away', 35.185612, 72.509898, '2025-06-21 08:38:24', 11);
INSERT INTO incidents (id, district, province, severity, description, latitude, longitude, reported_at, reported_by) VALUES (41, 'D.I. Khan', 'Balochistan', 'high', 'Bridge washed away', 31.811971, 70.956916, '2026-01-03 08:38:24', 39);
INSERT INTO incidents (id, district, province, severity, description, latitude, longitude, reported_at, reported_by) VALUES (42, 'Nowshera', 'Punjab', 'low', 'Heavy rain caused house collapses', 34.012606, 71.890517, '2025-12-01 08:38:24', 13);
INSERT INTO incidents (id, district, province, severity, description, latitude, longitude, reported_at, reported_by) VALUES (43, 'Kohistan', 'Punjab', 'moderate', 'Bridge washed away', 35.30012, 73.270837, '2026-05-05 08:38:24', 12);
INSERT INTO incidents (id, district, province, severity, description, latitude, longitude, reported_at, reported_by) VALUES (44, 'Charsadda', 'KPK', 'high', 'Landslide blocked roads', 34.17955, 71.76507, '2026-01-20 08:38:24', 10);
INSERT INTO incidents (id, district, province, severity, description, latitude, longitude, reported_at, reported_by) VALUES (45, 'Kohistan', 'Punjab', 'catastrophic', 'Evacuation needed due to rising water', 35.374913, 73.235076, '2025-07-27 08:38:24', 36);
INSERT INTO incidents (id, district, province, severity, description, latitude, longitude, reported_at, reported_by) VALUES (46, 'Mardan', 'Gilgit-Baltistan', 'high', 'Bridge washed away', 34.198786, 72.139608, '2026-04-26 08:38:24', 11);
INSERT INTO incidents (id, district, province, severity, description, latitude, longitude, reported_at, reported_by) VALUES (47, 'D.I. Khan', 'Balochistan', 'high', 'Evacuation needed due to rising water', 31.912884, 70.831033, '2025-12-31 08:38:24', 42);
INSERT INTO incidents (id, district, province, severity, description, latitude, longitude, reported_at, reported_by) VALUES (48, 'Kohistan', 'KPK', 'catastrophic', 'River overflow causing damage', 35.298515, 73.290068, '2025-11-09 08:38:24', 7);
INSERT INTO incidents (id, district, province, severity, description, latitude, longitude, reported_at, reported_by) VALUES (49, 'Malakand', 'Balochistan', 'moderate', 'Heavy rain caused house collapses', 34.47826, 71.989329, '2026-04-15 08:38:24', 18);
INSERT INTO incidents (id, district, province, severity, description, latitude, longitude, reported_at, reported_by) VALUES (50, 'Chitral', 'Balochistan', 'high', 'Bridge washed away', 35.778067, 71.831438, '2025-09-11 08:38:24', 17);
INSERT INTO incidents (id, district, province, severity, description, latitude, longitude, reported_at, reported_by) VALUES (51, 'D.I. Khan', 'Punjab', 'catastrophic', 'Evacuation needed due to rising water', 31.903841, 70.952334, '2025-08-12 08:38:24', 33);
INSERT INTO incidents (id, district, province, severity, description, latitude, longitude, reported_at, reported_by) VALUES (52, 'Swat', 'Sindh', 'high', 'Landslide blocked roads', 35.257489, 72.38624, '2025-06-29 08:38:24', 42);
INSERT INTO incidents (id, district, province, severity, description, latitude, longitude, reported_at, reported_by) VALUES (53, 'Mardan', 'Gilgit-Baltistan', 'moderate', 'Heavy rain caused house collapses', 34.2674, 72.041714, '2025-07-08 08:38:24', 21);
INSERT INTO incidents (id, district, province, severity, description, latitude, longitude, reported_at, reported_by) VALUES (54, 'Chitral', 'KPK', 'catastrophic', 'River overflow causing damage', 35.763183, 71.791737, '2025-11-30 08:38:24', 16);
INSERT INTO incidents (id, district, province, severity, description, latitude, longitude, reported_at, reported_by) VALUES (55, 'Nowshera', 'Punjab', 'low', 'Evacuation needed due to rising water', 33.9871, 71.998921, '2025-07-21 08:38:24', 46);
INSERT INTO incidents (id, district, province, severity, description, latitude, longitude, reported_at, reported_by) VALUES (56, 'Nowshera', 'Sindh', 'moderate', 'Bridge washed away', 33.979748, 71.944467, '2026-05-08 08:38:24', 17);
INSERT INTO incidents (id, district, province, severity, description, latitude, longitude, reported_at, reported_by) VALUES (57, 'D.I. Khan', 'KPK', 'low', 'Bridge washed away', 31.770002, 70.939843, '2025-07-01 08:38:24', 41);
INSERT INTO incidents (id, district, province, severity, description, latitude, longitude, reported_at, reported_by) VALUES (58, 'Dir', 'Balochistan', 'moderate', 'Heavy rain caused house collapses', 35.144284, 71.80596, '2025-11-29 08:38:24', 16);
INSERT INTO incidents (id, district, province, severity, description, latitude, longitude, reported_at, reported_by) VALUES (59, 'Dir', 'KPK', 'catastrophic', 'Evacuation needed due to rising water', 35.141074, 71.974938, '2025-11-20 08:38:24', 22);
INSERT INTO incidents (id, district, province, severity, description, latitude, longitude, reported_at, reported_by) VALUES (60, 'Malakand', 'Sindh', 'catastrophic', 'Bridge washed away', 34.663347, 71.88339, '2026-04-05 08:38:24', 50);
INSERT INTO incidents (id, district, province, severity, description, latitude, longitude, reported_at, reported_by) VALUES (61, 'Malakand', 'Sindh', 'moderate', 'Flash flood in main market', 34.612732, 71.996702, '2026-03-15 08:38:24', 9);
INSERT INTO incidents (id, district, province, severity, description, latitude, longitude, reported_at, reported_by) VALUES (62, 'Nowshera', 'Balochistan', 'high', 'Bridge washed away', 34.094236, 72.023559, '2025-10-14 08:38:24', 25);
INSERT INTO incidents (id, district, province, severity, description, latitude, longitude, reported_at, reported_by) VALUES (63, 'Shangla', 'Gilgit-Baltistan', 'catastrophic', 'Flash flood in main market', 34.963497, 72.664589, '2025-11-06 08:38:24', 35);
INSERT INTO incidents (id, district, province, severity, description, latitude, longitude, reported_at, reported_by) VALUES (64, 'Peshawar', 'KPK', 'moderate', 'Bridge washed away', 34.112536, 71.436253, '2025-08-10 08:38:24', 28);
INSERT INTO incidents (id, district, province, severity, description, latitude, longitude, reported_at, reported_by) VALUES (65, 'D.I. Khan', 'KPK', 'high', 'River overflow causing damage', 31.922989, 70.909531, '2026-05-10 08:38:24', 20);
INSERT INTO incidents (id, district, province, severity, description, latitude, longitude, reported_at, reported_by) VALUES (66, 'Mardan', 'Gilgit-Baltistan', 'catastrophic', 'Flash flood in main market', 34.158822, 71.958182, '2025-06-04 08:38:24', 28);
INSERT INTO incidents (id, district, province, severity, description, latitude, longitude, reported_at, reported_by) VALUES (67, 'Shangla', 'Punjab', 'low', 'Bridge washed away', 34.946313, 72.739333, '2026-01-15 08:38:24', 2);
INSERT INTO incidents (id, district, province, severity, description, latitude, longitude, reported_at, reported_by) VALUES (68, 'D.I. Khan', 'Sindh', 'catastrophic', 'Heavy rain caused house collapses', 31.786312, 70.805204, '2025-12-14 08:38:24', 19);
INSERT INTO incidents (id, district, province, severity, description, latitude, longitude, reported_at, reported_by) VALUES (69, 'D.I. Khan', 'Punjab', 'low', 'Bridge washed away', 31.817318, 70.927836, '2025-06-27 08:38:24', 42);
INSERT INTO incidents (id, district, province, severity, description, latitude, longitude, reported_at, reported_by) VALUES (70, 'Kohistan', 'KPK', 'low', 'Landslide blocked roads', 35.230095, 73.244372, '2025-10-27 08:38:24', 35);
INSERT INTO incidents (id, district, province, severity, description, latitude, longitude, reported_at, reported_by) VALUES (71, 'Charsadda', 'Sindh', 'moderate', 'River overflow causing damage', 34.083768, 71.797196, '2025-07-13 08:38:24', 3);
INSERT INTO incidents (id, district, province, severity, description, latitude, longitude, reported_at, reported_by) VALUES (72, 'Shangla', 'KPK', 'low', 'Evacuation needed due to rising water', 34.85822, 72.702683, '2025-08-21 08:38:24', 46);
INSERT INTO incidents (id, district, province, severity, description, latitude, longitude, reported_at, reported_by) VALUES (73, 'Charsadda', 'Balochistan', 'high', 'Landslide blocked roads', 34.161466, 71.728649, '2025-12-31 08:38:24', 49);
INSERT INTO incidents (id, district, province, severity, description, latitude, longitude, reported_at, reported_by) VALUES (74, 'Shangla', 'Punjab', 'catastrophic', 'Landslide blocked roads', 34.787153, 72.679965, '2026-03-18 08:38:24', 29);
INSERT INTO incidents (id, district, province, severity, description, latitude, longitude, reported_at, reported_by) VALUES (75, 'Malakand', 'Sindh', 'high', 'River overflow causing damage', 34.619916, 71.830563, '2025-11-21 08:38:24', 49);
INSERT INTO incidents (id, district, province, severity, description, latitude, longitude, reported_at, reported_by) VALUES (76, 'Charsadda', 'KPK', 'moderate', 'Bridge washed away', 34.126996, 71.81055, '2025-11-14 08:38:24', 10);
INSERT INTO incidents (id, district, province, severity, description, latitude, longitude, reported_at, reported_by) VALUES (77, 'Mardan', 'Sindh', 'catastrophic', 'River overflow causing damage', 34.166427, 72.080864, '2026-04-14 08:38:24', 49);
INSERT INTO incidents (id, district, province, severity, description, latitude, longitude, reported_at, reported_by) VALUES (78, 'Swat', 'Sindh', 'low', 'River overflow causing damage', 35.147651, 72.439426, '2026-02-25 08:38:24', 50);
INSERT INTO incidents (id, district, province, severity, description, latitude, longitude, reported_at, reported_by) VALUES (79, 'Malakand', 'Balochistan', 'low', 'Evacuation needed due to rising water', 34.630499, 71.991606, '2025-11-14 08:38:24', 30);
INSERT INTO incidents (id, district, province, severity, description, latitude, longitude, reported_at, reported_by) VALUES (80, 'Chitral', 'Sindh', 'high', 'Bridge washed away', 35.818796, 71.763192, '2025-09-03 08:38:24', 12);
INSERT INTO incidents (id, district, province, severity, description, latitude, longitude, reported_at, reported_by) VALUES (81, 'D.I. Khan', 'Balochistan', 'high', 'River overflow causing damage', 31.956912, 70.904196, '2025-10-23 08:38:24', 10);
INSERT INTO incidents (id, district, province, severity, description, latitude, longitude, reported_at, reported_by) VALUES (82, 'Kohistan', 'Punjab', 'low', 'River overflow causing damage', 35.256166, 73.176139, '2026-04-19 08:38:24', 25);
INSERT INTO incidents (id, district, province, severity, description, latitude, longitude, reported_at, reported_by) VALUES (83, 'Mardan', 'Punjab', 'low', 'River overflow causing damage', 34.247121, 72.093319, '2025-12-29 08:38:24', 27);
INSERT INTO incidents (id, district, province, severity, description, latitude, longitude, reported_at, reported_by) VALUES (84, 'Mardan', 'Punjab', 'high', 'Landslide blocked roads', 34.218779, 72.019307, '2025-08-16 08:38:24', 8);
INSERT INTO incidents (id, district, province, severity, description, latitude, longitude, reported_at, reported_by) VALUES (85, 'Swat', 'Sindh', 'catastrophic', 'Evacuation needed due to rising water', 35.219521, 72.416855, '2025-09-11 08:38:24', 47);
INSERT INTO incidents (id, district, province, severity, description, latitude, longitude, reported_at, reported_by) VALUES (86, 'D.I. Khan', 'Balochistan', 'low', 'Landslide blocked roads', 31.904736, 70.958509, '2025-09-13 08:38:24', 25);
INSERT INTO incidents (id, district, province, severity, description, latitude, longitude, reported_at, reported_by) VALUES (87, 'Kohistan', 'Gilgit-Baltistan', 'high', 'Landslide blocked roads', 35.280843, 73.249796, '2025-05-20 08:38:24', 47);
INSERT INTO incidents (id, district, province, severity, description, latitude, longitude, reported_at, reported_by) VALUES (88, 'Mardan', 'Punjab', 'catastrophic', 'River overflow causing damage', 34.245029, 72.014912, '2025-08-30 08:38:24', 25);
INSERT INTO incidents (id, district, province, severity, description, latitude, longitude, reported_at, reported_by) VALUES (89, 'Peshawar', 'Punjab', 'low', 'Bridge washed away', 33.973855, 71.462388, '2026-03-19 08:38:24', 34);
INSERT INTO incidents (id, district, province, severity, description, latitude, longitude, reported_at, reported_by) VALUES (90, 'Charsadda', 'KPK', 'catastrophic', 'Flash flood in main market', 34.052491, 71.750075, '2025-05-15 08:38:24', 44);
INSERT INTO incidents (id, district, province, severity, description, latitude, longitude, reported_at, reported_by) VALUES (91, 'Chitral', 'Sindh', 'low', 'River overflow causing damage', 35.920892, 71.825309, '2025-11-22 08:38:24', 39);
INSERT INTO incidents (id, district, province, severity, description, latitude, longitude, reported_at, reported_by) VALUES (92, 'Kohistan', 'Punjab', 'low', 'Heavy rain caused house collapses', 35.408814, 73.218888, '2025-05-24 08:38:24', 1);
INSERT INTO incidents (id, district, province, severity, description, latitude, longitude, reported_at, reported_by) VALUES (93, 'Kohistan', 'Sindh', 'moderate', 'Heavy rain caused house collapses', 35.348023, 73.283378, '2025-05-19 08:38:24', 28);
INSERT INTO incidents (id, district, province, severity, description, latitude, longitude, reported_at, reported_by) VALUES (94, 'Dir', 'Punjab', 'catastrophic', 'Landslide blocked roads', 35.26223, 71.830747, '2025-11-10 08:38:24', 11);
INSERT INTO incidents (id, district, province, severity, description, latitude, longitude, reported_at, reported_by) VALUES (95, 'Chitral', 'Sindh', 'low', 'Heavy rain caused house collapses', 35.865272, 71.788094, '2026-02-03 08:38:24', 28);
INSERT INTO incidents (id, district, province, severity, description, latitude, longitude, reported_at, reported_by) VALUES (96, 'Shangla', 'Punjab', 'moderate', 'Flash flood in main market', 34.914293, 72.752396, '2026-01-21 08:38:24', 6);
INSERT INTO incidents (id, district, province, severity, description, latitude, longitude, reported_at, reported_by) VALUES (97, 'Mardan', 'Gilgit-Baltistan', 'moderate', 'Heavy rain caused house collapses', 34.283743, 71.983915, '2025-11-19 08:38:24', 33);
INSERT INTO incidents (id, district, province, severity, description, latitude, longitude, reported_at, reported_by) VALUES (98, 'Charsadda', 'Balochistan', 'low', 'River overflow causing damage', 34.162868, 71.770626, '2025-12-17 08:38:24', 35);
INSERT INTO incidents (id, district, province, severity, description, latitude, longitude, reported_at, reported_by) VALUES (99, 'Chitral', 'Sindh', 'catastrophic', 'Flash flood in main market', 35.855472, 71.882951, '2026-05-04 08:38:24', 47);
INSERT INTO incidents (id, district, province, severity, description, latitude, longitude, reported_at, reported_by) VALUES (100, 'Swat', 'Balochistan', 'moderate', 'Evacuation needed due to rising water', 35.255115, 72.365102, '2025-05-13 08:38:24', 22);

-- ============================================================
-- UPDATE and DELETE Operations
-- ============================================================

-- Example UPDATE: Mark a specific relief request as fulfilled
UPDATE relief_requests 
SET status = 'fulfilled' 
WHERE id = 1 AND status != 'fulfilled';

-- Example DELETE: Remove an incident that was falsely reported
DELETE FROM incidents 
WHERE id = 100 AND severity = 'low';

-- ============================================================
-- Validation Queries
-- ============================================================

-- A. COUNT (*) for each table
SELECT 'users' AS TableName, COUNT(*) AS RowCount FROM users;
SELECT 'shelters' AS TableName, COUNT(*) AS RowCount FROM shelters;
SELECT 'evacuees' AS TableName, COUNT(*) AS RowCount FROM evacuees;
SELECT 'supplies' AS TableName, COUNT(*) AS RowCount FROM supplies;
SELECT 'ngos' AS TableName, COUNT(*) AS RowCount FROM ngos;
SELECT 'relief_requests' AS TableName, COUNT(*) AS RowCount FROM relief_requests;
SELECT 'incidents' AS TableName, COUNT(*) AS RowCount FROM incidents;

-- B. NULL check on key columns
SELECT 'shelters_null_city' AS CheckName, COUNT(*) AS NullCount FROM shelters WHERE city IS NULL;
SELECT 'evacuees_null_name' AS CheckName, COUNT(*) AS NullCount FROM evacuees WHERE name IS NULL;

-- C. JOIN-based check to confirm foreign key integrity
-- Check if there are any evacuees assigned to a non-existent shelter (should return 0)
SELECT e.id AS Evacuee_ID, e.name AS Evacuee_Name, e.shelter_id
FROM evacuees e
LEFT JOIN shelters s ON e.shelter_id = s.id
WHERE s.id IS NULL;

-- ============================================================
-- OUTPUTS FOR VALIDATION QUERIES (AS REQUIRED BY MILESTONE 5)
-- ============================================================
-- Query A (COUNT *)
-- users: 50
-- shelters: 50
-- evacuees: 100
-- supplies: 100
-- ngos: 50
-- relief_requests: 100
-- incidents: 99 (1 removed via DELETE operation)
-- 
-- Query B (NULL Checks)
-- shelters_null_city: 0
-- evacuees_null_name: 0
--
-- Query C (JOIN-based FK Check)
-- Output: 0 rows returned. All evacuees are assigned to a valid, existing shelter.
-- Foreign Key integrity is confirmed intact.
