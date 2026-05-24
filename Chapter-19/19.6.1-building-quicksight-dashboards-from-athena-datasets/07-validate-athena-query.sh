aws athena start-query-execution --query-string "
SELECT region,
       SUM(amount) AS total_sales
FROM quicksight_demo_db.sales_data
GROUP BY region;
" --result-configuration OutputLocation=s3://de-athena-query-results-demo/
