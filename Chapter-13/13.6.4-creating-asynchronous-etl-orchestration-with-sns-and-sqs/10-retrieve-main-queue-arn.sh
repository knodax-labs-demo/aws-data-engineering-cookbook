QUEUE_ARN=$(aws sqs get-queue-attributes   --queue-url "$QUEUE_URL"   --attribute-names QueueArn   --region $REGION   --query 'Attributes.QueueArn'   --output text)
