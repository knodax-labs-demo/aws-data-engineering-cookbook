CREATE EXTERNAL SCHEMA spectrum_schema
FROM DATA CATALOG
DATABASE 'spectrum_db'
IAM_ROLE 'arn:aws:iam::<ACCOUNT-ID>:role/MyRedshiftRole'
REGION 'us-east-1';
