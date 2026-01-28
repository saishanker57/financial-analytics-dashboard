-- Financial Analysis SQL Queries

SELECT
    category,
    SUM(amount) AS total_amount
FROM financial_data
GROUP BY category;  
