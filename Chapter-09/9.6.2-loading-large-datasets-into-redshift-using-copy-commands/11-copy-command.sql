COPY sales_data
FROM 's3://YOUR_BUCKET_NAME/sales_data.csv'
IAM_ROLE 'YOUR_ROLE_ARN'
CSV;
