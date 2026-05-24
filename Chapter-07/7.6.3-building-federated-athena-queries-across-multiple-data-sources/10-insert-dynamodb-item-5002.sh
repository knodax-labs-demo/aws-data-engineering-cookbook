aws dynamodb put-item   --table-name $DYNAMODB_TABLE   --item '{
    "order_id": {"S":"5002"},
    "customer_id": {"S":"102"},
    "amount": {"N":"400"}
  }'
