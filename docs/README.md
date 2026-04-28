# Sales Pipeline & Revenue Dashboard (Simulated HubSpot Data)

This project simulates a HubSpot-style CRM environment to demonstrate core Revenue Operations (RevOps) skills, including data cleaning, KPI modeling, workflow design, and dashboard creation. It mirrors the analytics and operational structure used in early‑stage SaaS companies to track pipeline health, revenue performance, and sales efficiency.

---

## Project Overview

This end‑to‑end RevOps analytics project includes:

- Simulated CRM datasets (Contacts + Deals)
- SQL cleaning and standardization scripts
- Defined revenue KPIs and funnel metrics
- A Power BI dashboard visualizing pipeline performance
- Documentation of workflows, data models, and business logic

The goal is to replicate the type of reporting and operational structure a first RevOps hire would build inside a growing SaaS organization.

---

## Dataset Structure

### **Contacts Table**
Includes:
- `contact_id`
- `first_name`, `last_name`
- `email`
- `lifecycle_stage` (Lead → MQL → SQL → Opportunity → Customer)
- `created_date`
- `owner`

### **Deals Table**
Includes:
- `deal_id`
- `contact_id`
- `deal_stage` (Prospecting → Closed Won/Lost)
- `amount`
- `created_date`
- `close_date`
- `owner`

These tables are intentionally messy to simulate real CRM conditions.

---

## Data Cleaning & Standardization

SQL scripts in the `/sql` folder perform:

- Duplicate removal  
- Email standardization  
- Stage normalization  
- Missing value handling  
- Date formatting  
- Deal stage ordering  
- Contact → Deal relationship validation  

This reflects the data hygiene work RevOps performs inside HubSpot.

---

## Key Performance Indicators (KPIs)

This project models the following revenue metrics:

### **Pipeline Metrics**
- Total pipeline value  
- Pipeline by stage  
- Win rate  
- Average deal size  
- Sales cycle length  

### **Funnel Metrics**
- Lead → MQL conversion  
- MQL → SQL conversion  
- SQL → Opportunity conversion  
- Opportunity → Closed Won conversion  

### **Rep Performance**
- Deals created  
- Deals closed  
- Revenue generated  

---

## Power BI Dashboard

The dashboard includes four pages:

### **1. Executive Overview**
- Total pipeline  
- Win rate  
- Revenue forecast  
- Deals by stage  
- Trend over time  

### **2. Funnel Conversion**
- Lead → Customer funnel  
- Drop‑off points  
- Conversion rates  

### **3. Rep Performance**
- Leaderboard  
- Deals by rep  
- Revenue by rep  

### **4. Data Quality**
- Missing fields  
- Duplicates  
- Stale deals  

---

## Data Model (ERD)

The `/docs` folder includes an ERD showing:

- Contacts → Deals relationship  
- Lifecycle stages  
- Deal stage progression  
- Field dependencies  

This mirrors how RevOps teams structure CRM data for reporting.

---

## Business Insights (Sample)

- Pipeline is weighted heavily toward early stages, indicating a need for qualification improvements.  
- Win rate trends suggest inconsistent follow‑up in mid‑funnel stages.  
- Rep performance varies significantly, highlighting coaching opportunities.  
- Data quality issues (missing lifecycle stages, inconsistent owners) impact reporting accuracy.  

---

## Future Enhancements

- Lead scoring model  
- Predictive revenue forecasting  
- Segmentation by vertical or region  
- Automated data quality alerts  
- HubSpot workflow simulation  

---

## Contact

Created by **Amanda (Mandy) Dunwoody**  
For analytics, RevOps, and workflow documentation projects.  
