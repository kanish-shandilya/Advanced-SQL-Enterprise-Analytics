-- ============================================
-- Cohort Retention Analysis
-- ============================================

WITH first_purchase AS (
    SELECT 
        customer_id,
        MIN(DATE_TRUNC('month', invoice_date)) AS first_month
    FROM retail_data
    WHERE quantity > 0
    GROUP BY customer_id
),
monthly_activity AS (
    SELECT 
        customer_id,
        DATE_TRUNC('month', invoice_date) AS activity_month
    FROM retail_data
    WHERE quantity > 0
)

SELECT 
    f.first_month,
    m.activity_month,
    COUNT(DISTINCT m.customer_id) AS active_customers
FROM first_purchase f
JOIN monthly_activity m
ON f.customer_id = m.customer_id
GROUP BY f.first_month, m.activity_month
ORDER BY f.first_month, m.activity_month;
