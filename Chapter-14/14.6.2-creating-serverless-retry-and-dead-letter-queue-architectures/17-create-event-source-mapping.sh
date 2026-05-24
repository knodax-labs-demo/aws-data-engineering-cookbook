aws lambda create-event-source-mapping   --function-name $FUNCTION_NAME   --event-source-arn $MAIN_QUEUE_ARN   --batch-size 1   --region $AWS_REGION
