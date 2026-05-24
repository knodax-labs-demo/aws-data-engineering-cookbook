aws athena start-query-execution   --query-string "
  CREATE EXTERNAL TABLE IF NOT EXISTS $DATABASE_NAME.$TABLE_NAME (
      order_id INT,
      customer STRING,
      region STRING,
      amount INT
  )
  ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
  WITH SERDEPROPERTIES (
      'separatorChar' = ',',
      'skip.header.line.count' = '1'
  )
  LOCATION 's3://$DATA_BUCKET/sales/';
  "   --result-configuration OutputLocation=s3://$ATHENA_RESULTS_BUCKET/results/
