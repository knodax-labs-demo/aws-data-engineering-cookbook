COPY sales_staging
FROM 's3://YOUR_BUCKET/customer_sales.csv'
IAM_ROLE 'YOUR_ROLE_ARN'
CSV;
