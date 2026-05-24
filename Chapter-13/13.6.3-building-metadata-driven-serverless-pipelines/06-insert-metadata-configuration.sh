aws dynamodb put-item   --table-name $TABLE_NAME   --item '{
    "dataset_type": {"S": "sales"},
    "target_prefix": {"S": "curated/sales/"},
    "transformation_type": {"S": "standardize"}
  }'   --region $REGION
