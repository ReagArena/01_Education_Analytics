# Student Academic Performance & Attendance Analysis

> **Notice on Data Authenticity:** *This project investigates student performance across sequential assessment stages (Class Test, Midterm, Final Exam) and evaluates the association between student attendance rates and academic achievement across Basic 6 to JHS3 grade levels at Glamersco Citadel Educational Complex. All metrics were analyzed using 100% synthetic dataset records created for training, SQL verification, and portfolio validation. School references and administrative contexts serve strictly as a realistic analytical scenario and do not represent confidential or real-world student records.*

## Domain
Education Analytics

## Objectives
- Evaluate performance across Mathematics and Science cohorts.
- Analyze score progression deltas between Class Tests and Final Examinations.
- Identify at-risk student cohorts using multi-condition filtering in Google Sheets and SQL.
- Build an interactive 3-chart dashboard in Google Sheets for executive reporting.
- Develop data-driven recommendations for school administrators.

## Tools & Concepts Demonstrated
- **Google Sheets:** Pivot Tables, `=IFS()`, `=AVERAGEIFS()`, Data Quality Checks, Formatting, 3-Chart Visual Dashboard.
- **SQL (Google Cloud BigQuery syntax):** Multi-level `GROUP BY`, conditional `WHERE` filters, `CASE WHEN` logic, CTEs (`WITH` clauses).
- **Execution Verification:** Reconciled BigQuery SQL query outputs directly against Google Sheets Pivot Table calculations to ensure 100% data consistency.
- **Analytical Reasoning:** Granularity verification (Row count vs. Entity count), statistical association wording, and data-derived policy threshold design.

## Repository Structure
```text
01_Education_Analytics/
├── data/                       # Raw CSV and Excel/Sheets workbook with Dashboard tab
├── sql/                        # SQL exploration, risk analysis, and CTE query scripts
├── documentation/              # Executive summary report and dashboard specification
└── README.md                   # Project overview page
