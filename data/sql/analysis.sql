-- Basic Financial Analysis Queries

-- 1. Total Revenue, Expenses, and Profit
SELECT
    SUM(Revenue) AS total_revenue,
    SUM(Expenses) AS total_expenses,
    SUM(Profit) AS total_profit
FROM financial_data;

-- 2. Financial performance by department
SELECT
    Department,
    SUM(Revenue) AS department_revenue,
    SUM(Expenses) AS department_expenses,
    SUM(Profit) AS department_profit
FROM financial_data
GROUP BY Department;

-- 3. Monthly revenue and profit trends
SELECT
    Date,
    SUM(Revenue) AS monthly_revenue,
    SUM(Profit) AS monthly_profit
FROM financial_data
GROUP BY Date
ORDER BY Date;

-- 4. Expense ratio analysis (cost control)
SELECT
    Department,
    ROUND(SUM(Expenses) / SUM(Revenue) * 100, 2) AS expense_ratio_percentage
FROM financial_data
GROUP BY Department;
