aws athena start-query-execution --query-string "
CREATE EXTERNAL TABLE quicksight_demo_db.sales_data (
  order_id INT,
  region STRING,
  product STRING,
  amount DOUBLE,
  sales_date DATE
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE
LOCATION 's3://de-analytics-dashboard-demo/sales/'
TBLPROPERTIES ('skip.header.line.count'='1');
" --result-configuration OutputLocation=s3://de-athena-query-results-demo/
