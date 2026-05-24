COPY sales_data
FROM 's3://de-redshift-quicksight-demo/data/sales_data.csv'
IAM_ROLE 'arn:aws:iam::<ACCOUNT_ID>:role/RedshiftS3AccessRole'
CSV
IGNOREHEADER 1;
