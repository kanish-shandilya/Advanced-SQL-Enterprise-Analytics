-- ============================================
-- Core Business KPI Analysis
-- ============================================

-- Total Revenue (excluding returns)
SELECT SUM(revenue) AS total_revenue
FROM retail_data
WHERE quantity > 0;

-- Total Orders
SELECT COUNT(DISTINCT invoice_id) AS total_orders
FROM retail_data
WHERE quantity > 0;

-- Average Order Value
SELECT 
    SUM(revenue) / COUNT(DISTINCT invoice_id) AS avg_order_value
FROM retail_data
WHERE quantity > 0;

-- Monthly Revenue Trend
SELECT 
    DATE_TRUNC('month', invoice_date) AS month,
    SUM(revenue) AS monthly_revenue
FROM retail_data
WHERE quantity > 0
GROUP BY month
ORDER BY month;