SELECT region,
       AVG(annual_income) AS avg_income
FROM customer_curated
GROUP BY region;
