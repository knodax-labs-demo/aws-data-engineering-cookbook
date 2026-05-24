aws athena start-query-execution --query-string "DROP TABLE quicksight_demo_db.sales_data;" --result-configuration OutputLocation=s3://de-athena-query-results-demo/
