aws s3api put-bucket-notification-configuration   --bucket $RAW_BUCKET   --notification-configuration '{
    "EventBridgeConfiguration": {}
  }'
