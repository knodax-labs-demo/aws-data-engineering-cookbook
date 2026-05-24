aws athena start-query-execution   --query-string "
  SELECT
      c.region,
      SUM(d.amount) AS total_sales
  FROM $DATABASE_NAME.customers c
  JOIN dynamodb.default.$DYNAMODB_TABLE d
      ON c.customer_id = d.customer_id
  GROUP BY c.region;
  "   --query-execution-context Database=$DATABASE_NAME   --result-configuration OutputLocation=s3://$ATHENA_RESULTS_BUCKET/results/
