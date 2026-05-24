aws events put-rule   --name $RULE_NAME   --event-pattern '{
    "source": ["aws.s3"],
    "detail-type": ["Object Created"],
    "detail": {
      "bucket": {
        "name": ["'"$RAW_BUCKET"'"]
      }
    }
  }'
