# KPI Definitions for Sales Pipeline & Revenue Analytics

This document defines the core KPIs used in the Sales Pipeline & Revenue Dashboard project. These metrics reflect standard Revenue Operations (RevOps) reporting used in early‑stage SaaS organizations.

---

# 1. Pipeline Metrics

## **Total Pipeline Value**
**Definition:** Sum of all open deal amounts across all stages.  
**Formula:**  
`SUM(amount WHERE deal_stage NOT IN ('Closed Won', 'Closed Lost'))`  
**Purpose:** Measures potential revenue currently in the pipeline.

## **Pipeline by Stage**
**Definition:** Total value of deals grouped by stage.  
**Purpose:** Identifies bottlenecks and stage distribution.

## **Win Rate**
**Definition:** Percentage of deals closed as “Won” out of all closed deals.  
**Formula:**  
`Closed Won / (Closed Won + Closed Lost)`  
**Purpose:** Measures sales effectiveness.

## **Average Deal Size**
**Definition:** Average amount of all Closed Won deals.  
**Formula:**  
`SUM(amount WHERE Closed Won) / COUNT(Closed Won)`  
**Purpose:** Helps forecast revenue and evaluate deal quality.

## **Sales Cycle Length**
**Definition:** Average number of days from deal creation to close.  
**Formula:**  
`AVG(close_date - created_date)`  
**Purpose:** Measures efficiency of the sales process.

---

# 2. Funnel Metrics

## **Lead → MQL Conversion Rate**
**Definition:** Percentage of Leads that become Marketing Qualified Leads.  
**Formula:**  
`MQLs / Leads`  
**Purpose:** Measures marketing effectiveness.

## **MQL → SQL Conversion Rate**
**Definition:** Percentage of MQLs that become Sales Qualified Leads.  
**Formula:**  
`SQLs / MQLs`  
**Purpose:** Measures qualification quality.

## **SQL → Opportunity Conversion Rate**
**Definition:** Percentage of SQLs that move into the Opportunity stage.  
**Formula:**  
`Opportunities / SQLs`  
**Purpose:** Measures sales readiness.

## **Opportunity → Closed Won Conversion Rate**
**Definition:** Percentage of Opportunities that become customers.  
**Formula:**  
`Closed Won / Opportunities`  
**Purpose:** Measures sales execution.

---

# 3. Rep Performance Metrics

## **Deals Created**
**Definition:** Number of deals created by each sales rep.  
**Purpose:** Measures activity levels.

## **Deals Closed**
**Definition:** Number of deals closed (Won or Lost) by each rep.  
**Purpose:** Measures throughput.

## **Revenue Generated**
**Definition:** Total Closed Won amount per rep.  
**Purpose:** Measures contribution to revenue.

---

# 4. Data Quality Metrics

## **Missing Fields Count**
**Definition:** Number of records missing key fields (email, stage, owner).  
**Purpose:** Identifies CRM hygiene issues.

## **Duplicate Contacts**
**Definition:** Contacts with matching emails or names.  
**Purpose:** Ensures clean reporting and accurate attribution.

## **Stale Deals**
**Definition:** Deals with no activity for X days.  
**Purpose:** Highlights pipeline risk.

---

