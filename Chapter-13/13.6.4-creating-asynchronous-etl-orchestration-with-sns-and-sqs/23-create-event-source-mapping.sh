aws lambda create-event-source-mapping   --function-name $FUNCTION_NAME   --event-source-arn $QUEUE_ARN   --batch-size 5   --region $REGION
