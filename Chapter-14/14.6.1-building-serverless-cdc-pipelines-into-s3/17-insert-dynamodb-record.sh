aws dynamodb put-item   --table-name $TABLE_NAME   --item '{
    "order_id": {"S": "1001"},
    "customer_name": {"S": "John Smith"},
    "sales_amount": {"N": "1200"}
  }'   --region $REGION
