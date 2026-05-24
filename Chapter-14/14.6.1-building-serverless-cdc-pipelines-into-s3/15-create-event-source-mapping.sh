aws lambda create-event-source-mapping   --function-name $FUNCTION_NAME   --event-source-arn $STREAM_ARN   --starting-position LATEST   --batch-size 10   --region $REGION
