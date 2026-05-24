aws dynamodb put-item   --table-name $DYNAMODB_TABLE   --item '{
    "order_id": {"S":"5001"},
    "customer_id": {"S":"101"},
    "amount": {"N":"700"}
  }'
