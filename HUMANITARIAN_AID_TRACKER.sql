/* PHASE 1: CREATE INFRASTRUCTURE */
CREATE SCHEMA IF NOT EXISTS humanitarian_ops;

CREATE TABLE IF NOT EXISTS humanitarian_ops.districts (
    district_id SERIAL PRIMARY KEY,
    region_name VARCHAR(100) NOT NULL,
    pcode VARCHAR(10) UNIQUE
);

CREATE TABLE IF NOT EXISTS humanitarian_ops.beneficiaries (
    beneficiary_id SERIAL PRIMARY KEY, full_name VARCHAR(255), 
    household_size INT, district_id INT REFERENCES humanitarian_ops.districts(district_id)
);

CREATE TABLE IF NOT EXISTS humanitarian_ops.aid_logs (
    log_id SERIAL PRIMARY KEY, beneficiary_id INT REFERENCES humanitarian_ops.beneficiaries(beneficiary_id),
    item_type VARCHAR(50), quantity_kg DECIMAL(10, 2)
);

/* PHASE 2: INSERT FIELD DATA */
INSERT INTO humanitarian_ops.districts (region_name, pcode) VALUES ('Marsabit Central', 'KE-MAR-01') ON CONFLICT DO NOTHING;
INSERT INTO humanitarian_ops.beneficiaries (full_name, household_size, district_id) 
VALUES ('Ann Nyakwea', 5, (SELECT district_id FROM humanitarian_ops.districts WHERE pcode = 'KE-MAR-01'));
INSERT INTO humanitarian_ops.aid_logs (beneficiary_id, item_type, quantity_kg)
VALUES ((SELECT beneficiary_id FROM humanitarian_ops.beneficiaries WHERE full_name = 'Ann Nyakwea'), 'Rice', 50.00);

/* PHASE 3: THE FINAL REPORT QUERY */
SELECT 
    b.full_name AS "Recipient",
    d.region_name AS "District",
    l.item_type AS "Aid_Item",
    l.quantity_kg AS "KG"
FROM humanitarian_ops.beneficiaries b
JOIN humanitarian_ops.districts d ON b.district_id = d.district_id
JOIN humanitarian_ops.aid_logs l ON b.beneficiary_id = l.beneficiary_id;