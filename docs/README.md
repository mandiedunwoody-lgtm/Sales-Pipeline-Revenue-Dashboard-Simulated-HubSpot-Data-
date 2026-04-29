# Sales Pipeline & Revenue Dashboard
### Simulated HubSpot CRM Data — End-to-End Analytics Project

This project demonstrates a complete analytics workflow using simulated HubSpot CRM data. It includes data cleaning, feature engineering, KPI modeling, and a multi-page Power BI dashboard designed to replicate real Revenue Operations (RevOps) reporting.

---

## Table of Contents
- [Project Overview](#project-overview)
- [Key Business Questions](#key-business-questions)
- [Tools and Technologies](#tools-and-technologies)
- [Data Preparation](#data-preparation)
- [Dashboard Preview](#dashboard-preview)
- [Download Dashboard Files](#download-dashboard-files)
- [Repository Structure](#repository-structure)
- [Insights Summary](#insights-summary)
- [Contact](#contact)

---

## Project Overview

This project analyzes a simulated sales pipeline to uncover:

- Revenue outlook and forecast accuracy  
- Pipeline health and deal quality  
- Sales cycle efficiency  
- Owner performance  
- Stage-level bottlenecks  

The final deliverables include:

- A Power BI dashboard  
- A fully cleaned and merged dataset (`pipeline_model.csv`)  
- Documentation of insights (`INSIGHTS.md`)  
- Python notebooks for reproducibility  

---

## Key Business Questions

- What is the projected revenue for upcoming periods?  
- Which sales owners contribute most to the forecast?  
- How long does it take deals to close?  
- Are larger deals taking longer to close?  
- Where are the biggest drop-offs in the pipeline?  

---

## Tools and Technologies

- Python (pandas) — data cleaning & modeling  
- Jupyter / VS Code — notebook development  
- Power BI — dashboard creation  
- GitHub — version control & documentation  

---

## Data Preparation

All data cleaning and modeling steps are performed in:

/notebooks/03_build_pipeline_model.ipynb


Key transformations:

- Cleaned contacts & deals datasets  
- Merged on `contact_id`  
- Converted date fields  
- Engineered `sales_cycle_days`  
- Exported final dataset as `pipeline_model.csv`  

Final dataset stored in:

/data/pipeline_model.csv


---

## Dashboard Preview

### Page 1 — Pipeline Overview
![Pipeline Overview](../dashboard/page1_pipeline_overview.png)

### Page 2 — Forecasting & Performance Insights
![Forecasting Insights](../dashboard/page2_forecasting_insights.png)

---

## Download Dashboard Files

### Power BI Dashboard (.pbix)
[Download pipeline_dashboard.pbix](../dashboard/pipeline_dashboard.pbix)

### Dataset (.csv)
[Download pipeline_model.csv](../data/pipeline_model.csv)

---

## Repository Structure

/dashboard
pipeline_dashboard.pbix
page1_pipeline_overview.png
page2_forecasting_insights.png

/data
pipeline_model.csv

/docs
README.md
INSIGHTS.md

/notebooks
01_data_cleaning.ipynb
02_exploratory_analysis.ipynb
03_build_pipeline_model.ipynb


---

## Insights Summary

A detailed breakdown of findings is available in:

/docs/INSIGHTS.md


Includes:

- Forecast trends  
- Owner performance  
- Deal quality patterns  
- Sales cycle analysis  
- Recommended actions  

---

## Contact

**Mandy Dunwoody**  
Operations & Business Analysis Specialist  
Data Analytics • Power BI • Python • SQL

