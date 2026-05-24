INSERT INTO sales_summary
SELECT
    category,
    SUM(sales_amount) AS total_sales,
    COUNT(*) AS total_customers
FROM sales_staging
GROUP BY category;
