-- til

WITH table_1 AS (

SELECT
	DATE_TRUNC ('month', orderdate) AS months,
	SUM (ca.total_net_revenue) AS m_revenue,
	COUNT (DISTINCT customerkey) AS m_customers,
	SUM (ca.total_net_revenue) / COUNT (DISTINCT customerkey) m_avg
FROM
	cohort_analysis ca 
	
GROUP BY
	months
	
)

SELECT
	months,
	AVG (m_revenue) OVER (ROWS BETWEEN 1 PRECEDING AND 1 FOLLOWING),
	AVG (m_customers) OVER (ROWS BETWEEN 1 PRECEDING AND 1 FOLLOWING),
	AVG (m_avg) OVER (ROWS BETWEEN 1 PRECEDING AND 1 FOLLOWING)

FROM 
	table_1