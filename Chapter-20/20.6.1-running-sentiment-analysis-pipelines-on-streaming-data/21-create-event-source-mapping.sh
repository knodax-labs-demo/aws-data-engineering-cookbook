aws lambda create-event-source-mapping   --function-name streaming-sentiment-analysis   --event-source-arn "$STREAM_ARN"   --starting-position LATEST   --region "$REGION"
