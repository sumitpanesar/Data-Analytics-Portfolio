-- Logistics Operations SQL Analysis
-- Project: Logistics Performance Dashboard


-- View full dataset

SELECT *
FROM logistics_operations;


-- Total orders processed

SELECT 
    SUM("Orders Dispatched") AS Total_Orders
FROM logistics_operations;


-- Orders by shift

SELECT
    Shift,
    SUM("Orders Dispatched") AS Total_Orders
FROM logistics_operations
GROUP BY Shift;


-- Average processing time by shift

SELECT
    Shift,
    ROUND(AVG("Processing Time (mins)"), 1) AS Average_Processing_Time
FROM logistics_operations
GROUP BY Shift;


-- Stock discrepancy analysis

SELECT
    Date,
    "Stock Discrepancies"
FROM logistics_operations
ORDER BY "Stock Discrepancies" DESC;