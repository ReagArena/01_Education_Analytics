# Student Academic Performance & Attendance Analysis

## Domain
Education Analytics

## Project Context
This project investigates student performance across sequential assessment stages (Class Test, Midterm, Final Exam) and evaluates the association between student attendance rates and academic achievement across Basic 6 to JHS3 grade levels.

> **Data Disclaimer:** All data used in this project is **100% SYNTHETIC** and created exclusively for portfolio skill demonstration.

## Objectives
- Evaluate performance across Mathematics and Science cohorts.
- Analyze score progression deltas between Class Tests and Final Examinations.
- Identify at-risk student cohorts using multi-condition filtering in Google Sheets and SQL.
- Build an interactive 3-chart dashboard in Google Sheets for executive reporting.
- Develop data-driven recommendations for school administrators.

## Tools & Concepts Demonstrated
- **Google Sheets:** Pivot Tables, `=IFS()`, `=AVERAGEIFS()`, Data Quality Checks, Formatting, 3-Chart Visual Dashboard.
- **SQL (PostgreSQL / BigQuery syntax):** Multi-level `GROUP BY`, conditional `WHERE` filters, `CASE WHEN` logic, CTEs (`WITH` clauses).
- **Analytical Reasoning:** Granularity verification (Row count vs. Entity count), Correlation vs. Causation principles.

## Repository Structure
```text
01_Education_Analytics/
├── data/                       # Raw CSV and Excel workbook with Dashboard tab
├── sql/                        # SQL exploration and CTE query scripts
├── documentation/              # Executive report and dashboard specification
└── README.md                   # Project overview page