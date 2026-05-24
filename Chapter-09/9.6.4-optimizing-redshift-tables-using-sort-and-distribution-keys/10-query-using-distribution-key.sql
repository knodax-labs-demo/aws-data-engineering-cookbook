SELECT customer_id,
       SUM(sales_amount) AS total_sales
FROM sales_optimized
GROUP BY customer_id;
