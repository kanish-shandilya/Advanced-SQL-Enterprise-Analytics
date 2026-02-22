-- ============================================
-- Schema Setup for Enterprise SQL Analytics
-- ============================================

CREATE TABLE retail_data (
    invoice_id VARCHAR(20),
    stock_code VARCHAR(20),
    product_description TEXT,
    quantity INTEGER,
    invoice_date TIMESTAMP,
    unit_price NUMERIC,
    customer_id INTEGER,
    country VARCHAR(50)
);

-- Add derived revenue column
ALTER TABLE retail_data
ADD COLUMN revenue NUMERIC;

-- Populate revenue
UPDATE retail_data
SET revenue = quantity * unit_price;
