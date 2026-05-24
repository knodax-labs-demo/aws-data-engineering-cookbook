aws athena start-query-execution   --query-string "
  CREATE EXTERNAL TABLE IF NOT EXISTS $DATABASE_NAME.customers (
      customer_id STRING,
      name STRING,
      region STRING
  )
  ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
  WITH SERDEPROPERTIES (
      'separatorChar' = ',',
      'skip.header.line.count' = '1'
  )
  LOCATION 's3://$DATA_BUCKET/customers/';
  "   --result-configuration OutputLocation=s3://$ATHENA_RESULTS_BUCKET/results/
