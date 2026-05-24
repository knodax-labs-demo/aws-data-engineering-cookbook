aws sns subscribe   --topic-arn $TOPIC_ARN   --protocol sqs   --notification-endpoint $QUEUE_ARN   --region $REGION
