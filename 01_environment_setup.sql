/* PROJECT: Data Analytics Environment Setup
   AUTHOR: Ann Nyakwea
   DESCRIPTION: Creating a high-integrity schema for professional verification.
*/

CREATE SCHEMA IF NOT EXISTS analytics_audit;

CREATE TABLE IF NOT EXISTS analytics_audit.portfolio_verification (
    entry_id SERIAL PRIMARY KEY,
    professional_name VARCHAR(100) NOT NULL,
    certification_status VARCHAR(50),
    deployment_date DATE DEFAULT CURRENT_DATE,
    db_engine_version TEXT
);

INSERT INTO analytics_audit.portfolio_verification 
(professional_name, certification_status, db_engine_version) 
VALUES 
('Ann Nyakwea', 'Verified Database Admin', (SELECT version()));

SELECT * FROM analytics_audit.portfolio_verification;
