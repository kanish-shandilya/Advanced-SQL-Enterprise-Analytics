-- ============================================
-- Advanced Business Insights
-- ============================================

-- Top 10 Products by Revenue
SELECT 
    stock_code,
    SUM(revenue) AS product_revenue
FROM retail_data
WHERE quantity > 0
GROUP BY stock_code
ORDER BY product_revenue DESC
LIMIT 10;

-- Revenue by Country
SELECT 
    country,
    SUM(revenue) AS country_revenue
FROM retail_data
WHERE quantity > 0
GROUP BY country
ORDER BY country_revenue DESC;

-- Refund Rate
SELECT 
    COUNT(CASE WHEN quantity < 0 THEN 1 END) * 100.0 / COUNT(*) 
    AS refund_percentage
FROM retail_data;
