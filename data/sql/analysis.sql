-- Basic financial analysis queries

-- Total revenue
SELECT SUM(revenue) AS total_revenue
FROM financial_data;

-- Revenue by category
SELECT category, SUM(revenue) AS category_revenue
FROM financial_data
GROUP BY category;
