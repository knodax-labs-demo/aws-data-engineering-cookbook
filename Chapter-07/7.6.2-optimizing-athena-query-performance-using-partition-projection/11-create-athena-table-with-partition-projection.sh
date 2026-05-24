aws athena start-query-execution   --query-string "
  CREATE EXTERNAL TABLE IF NOT EXISTS $DATABASE_NAME.$TABLE_NAME (
      event_id INT,
      user_id INT,
      page STRING,
      views INT
  )
  PARTITIONED BY (
      year STRING,
      month STRING,
      day STRING
  )
  ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
  WITH SERDEPROPERTIES (
      'separatorChar' = ',',
      'skip.header.line.count' = '1'
  )
  LOCATION 's3://$DATA_BUCKET/logs/'
  TBLPROPERTIES (
      'projection.enabled'='true',
      'projection.year.type'='integer',
      'projection.year.range'='2024,2030',
      'projection.month.type'='integer',
      'projection.month.range'='1,12',
      'projection.month.digits'='2',
      'projection.day.type'='integer',
      'projection.day.range'='1,31',
      'projection.day.digits'='2',
      'storage.location.template'='s3://$DATA_BUCKET/logs/year=\${year}/month=\${month}/day=\${day}/'
  );
  "   --result-configuration OutputLocation=s3://$ATHENA_RESULTS_BUCKET/results/
