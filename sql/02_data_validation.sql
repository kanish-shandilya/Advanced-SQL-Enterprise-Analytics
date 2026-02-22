-- ============================================
-- Data Validation & Quality Checks
-- ============================================

-- Check total records
SELECT COUNT(*) AS total_rows FROM retail_data;

-- Check missing customer IDs
SELECT COUNT(*) 
FROM retail_data
WHERE customer_id IS NULL;

-- Check negative quantities (returns)
SELECT COUNT(*) AS refund_transactions
FROM retail_data
WHERE quantity < 0;

-- Check negative prices
SELECT COUNT(*)
FROM retail_data
WHERE unit_price <= 0;

-- Duplicate invoice detection
SELECT invoice_id, COUNT(*)
FROM retail_data
GROUP BY invoice_id
HAVING COUNT(*) > 1;