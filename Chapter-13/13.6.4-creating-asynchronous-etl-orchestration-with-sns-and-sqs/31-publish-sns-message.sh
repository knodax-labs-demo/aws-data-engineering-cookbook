aws sns publish   --topic-arn $TOPIC_ARN   --message "{\"bucket\":\"$RAW_BUCKET\",\"key\":\"sales_async.csv\"}"   --region $REGION
