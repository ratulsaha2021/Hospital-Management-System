# 🏥 Hospital Management System (HMS)

[cite_start]A professional medical informatics solution designed to streamline hospital administration through automated record-keeping and data coordination[cite: 91, 364]. [cite_start]This project focuses on a centralized database architecture that manages all interactions between patients, medical staff, and hospital authorities[cite: 82, 365].

## 📋 Core Modules

- [cite_start]**Patient Lifecycle Management:** Automated assignment of unique Patient IDs, disease profiling, and current treatment tracking[cite: 83].
- [cite_start]**Staff Coordination:** Centralized management of doctors, nurses, and ward boys, including specialized IDs and floor-wise duty assignments[cite: 84, 88].
- [cite_start]**Facility Management:** Detailed tracking of Operation Theaters, ICU rooms, and general patient rooms[cite: 87].
- [cite_start]**Automated Billing System:** Dynamic bill generation based on hospitalization duration, pharmacy costs, and doctor charges[cite: 19, 89, 126].
- [cite_start]**Specialized Services:** Portal for managing checkup schedules, free treatments, and donation systems[cite: 130].

## 🏗 Database Architecture

[cite_start]This system utilizes a highly normalized relational schema designed for data accuracy and security[cite: 95].

### Entity Sets:
- [cite_start]**Strong Entities:** Hospital, Patient, Doctor, Nurse, Ward Boy, and Bill [cite: 20-26, 99].
- [cite_start]**Key Relationships:** Doctor-Patient treatment mapping, Nurse-Patient checkup coordination, and Patient-Bill financial tracking[cite: 14, 16, 125].

### Technical Implementation:
- [cite_start]**SQL Schema:** Full DDL implementation including `PRIMARY KEY`, `FOREIGN KEY` constraints, and `NOT NULL` validations [cite: 57-64].
- [cite_start]**Complex Querying:** Advanced data retrieval using `INNER JOIN`, `LEFT OUTER JOIN`, and conditional filters for specific diagnostic scenarios [cite: 311-341].
- [cite_start]**Data Integrity:** Implementation of `UPDATE` and `DELETE` cascades to manage staff rotations and bill clearances [cite: 344-358].

## ⚙️ Tech Stack

- **Database:** SQL / MySQL
- **Design Tools:** Draw.io (ER Diagramming)
- **Documentation:** MS Word / MS PowerPoint

## 📊 Sample Queries

#### 1. Targeted Patient Retrieval
[cite_start]Finds patients with specific symptoms (e.g., 'Liver Pain') and their assigned doctors [cite: 312-315]:
```sql
SELECT *
FROM patients_details AS p 
INNER JOIN doctor_details_list AS d
WHERE p.symptom = 'Liver Pain' AND d.info_id = 500;
