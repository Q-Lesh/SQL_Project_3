# SQL Mini-Case — Customer Lifecycle & Cohort Analysis

This mini-case focuses on customer segmentation, cohort-based revenue analysis, and retention dynamics for an e-commerce business.  
All insights are derived from SQL-only workflows using PostgreSQL.

---

## 1. Customer Segmentation  
**Query:** [`1_customer_segmentation.sql`](1_customer_segmentation.sql)  
Segmentation based on lifetime value (LTV):

- Grouped customers by total spend.
- Labeled segments as High-, Mid-, and Low-value groups.
- Computed aggregate revenue metrics.

**Visualization:**  
<img src="images/1_customer_segmentation.png" width="55%" />

**Findings (from SQL output):**
- Revenue concentration is high: the top quartile generates the majority of revenue.
- Low-value customers contribute minimally to overall performance.

---

## 2. Revenue by Cohort  
**Query:** [`2_cohort_analysis.sql`](2_cohort_analysis.sql)  
Cohorts defined by first purchase year:

- Measured revenue trends over time.
- Computed adjusted vs. unadjusted revenue.
- Analyzed monthly patterns and rolling averages.

**Visualizations:**

<img src="images/2_customer_revenue_normalized.png" width="55%" />

<img src="images/3_monthly_revenue_customers_3mo.png" width="55%" />

**Findings (from SQL output):**
- Newer cohorts show lower adjusted revenue due to limited time in market.
- Revenue peaked in 2022; later cohorts indicate weaker customer activation.
- Revenue volatility suggests inconsistent onboarding or targeting effectiveness.

---

## 3. Customer Retention  
**Query:** [`3_retention_analysis.sql`](3_retention_analysis.sql)

- Flagged likely-to-churn customers based on inactivity.
- Calculated retention and churn rates by cohort.
- Analyzed long-term customer survival curves.

**Visualization:**  
<img src="images/4_customer_churn_cohort_year.png" width="55%" />

**Findings (from SQL output):**
- Churn stabilizes around ~90% within 2–3 years across all cohorts.
- Only ~8–10% of customers remain active long term.
- Newer cohorts mirror historical churn curves, indicating structural retention issues.

---

## TLDR — Key Observations  
- Revenue is concentrated in a small high-value segment.  
- Adjusted cohort revenue declines in newer cohorts due to shorter lifecycle.  
- Retention is consistently low across all years.  
- Acquisition patterns fluctuate significantly across cohorts.

---

## Technical Details
- **Database:** PostgreSQL  
- **Tools:** PostgreSQL client, DBeaver  
- **Visualizations:** Python (matplotlib / seaborn)  
- **SQL Scripts:**  
  - [`0_create_view.sql`](0_create_view.sql) 
  - [`1_customer_segmentation.sql`](1_customer_segmentation.sql)  
  - [`2_cohort_analysis.sql`](2_cohort_analysis.sql)  
  - [`3_retention_analysis.sql`](3_retention_analysis.sql)

