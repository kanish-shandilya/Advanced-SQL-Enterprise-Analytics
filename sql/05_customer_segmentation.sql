-- ============================================
-- Customer Frequency Segmentation
-- ============================================

WITH customer_metrics AS (
    SELECT 
        customer_id,
        COUNT(DISTINCT invoice_id) AS order_count,
        SUM(revenue) AS total_spent
    FROM retail_data
    WHERE quantity > 0
    GROUP BY customer_id
)

SELECT *,
    CASE 
        WHEN order_count >= 15 THEN 'High Value'
        WHEN order_count BETWEEN 5 AND 14 THEN 'Mid Value'
        ELSE 'Low Value'
    END AS customer_segment
FROM customer_metrics;