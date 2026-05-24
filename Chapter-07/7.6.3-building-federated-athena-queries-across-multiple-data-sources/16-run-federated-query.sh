aws athena start-query-execution   --query-string "
  SELECT
      c.customer_id,
      c.name,
      c.region,
      d.amount
  FROM $DATABASE_NAME.customers c
  JOIN dynamodb.default.$DYNAMODB_TABLE d
      ON c.customer_id = d.customer_id
  ;
  "   --query-execution-context Database=$DATABASE_NAME   --result-configuration OutputLocation=s3://$ATHENA_RESULTS_BUCKET/results/
