aws glue get-tables   --database-name $DATABASE_NAME   --region $REGION   --query 'TableList[].Name'   --output table
