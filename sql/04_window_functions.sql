-- ============================================
-- Advanced Window Function Analysis
-- ============================================

-- Rank customers by revenue
SELECT 
    customer_id,
    SUM(revenue) AS customer_revenue,
    RANK() OVER (ORDER BY SUM(revenue) DESC) AS revenue_rank
FROM retail_data
WHERE quantity > 0
GROUP BY customer_id;

-- Running revenue over time
SELECT 
    DATE_TRUNC('month', invoice_date) AS month,
    SUM(revenue) AS monthly_revenue,
    SUM(SUM(revenue)) OVER (ORDER BY DATE_TRUNC('month', invoice_date)) 
    AS cumulative_revenue
FROM retail_data
WHERE quantity > 0
GROUP BY month
ORDER BY month;