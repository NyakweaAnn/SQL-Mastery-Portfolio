# 🐘 SQL Mastery & Data Architecture Portfolio
**Owner:** Ann Nyakwea  

## 🚀 Overview
This repository contains high-integrity SQL scripts and database architectures designed for professional data analytics.

## 🛠 The Tech Stack
* **Database:** PostgreSQL 18.3
* **Management:** DBeaver & VS Code
* **Version Control:** Git & GitHub

# Humanitarian Aid Tracker & Relational Database Simulation

## 📌 Project Overview
This project simulates a real-world humanitarian data management system. In many field operations, data architecture must be established before field data arrives. This repository demonstrates the ability to design, deploy, and query a relational database tailored for Monitoring, Evaluation, and Learning (MEL) workflows.

## 🛠️ Technical Stack
- **Database:** PostgreSQL
- **IDE:** VS Code (SQLTools) & DBeaver
- **Version Control:** Git & GitHub
- **Reporting:** CSV Export to WPS Office/Excel

## 🏗️ Database Architecture
The system utilizes a schema named `humanitarian_ops` with three interconnected tables to ensure data integrity:
1. **Districts:** Stores geographic reference data and standard P-Codes.
2. **Beneficiaries:** Registry of recipients linked to specific districts.
3. **Aid_Logs:** Transactional history of distributions (Item type, quantity, date).



## 🚀 Key Skills Demonstrated
- **Schema Design:** Implementing `PRIMARY KEY` and `FOREIGN KEY` constraints to prevent data duplication and orphans.
- **Relational Joins:** Writing complex queries to bridge geographic, demographic, and distribution data into a single source of truth.
- **Data Pipeline:** Managing the end-to-end flow from SQL raw data to professional CSV reports for management.

---
*Developed by Ann Nyakwea as part of a Senior Data Analyst portfolio.*