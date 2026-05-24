DLQ_ARN=$(aws sqs get-queue-attributes   --queue-url $DLQ_URL   --attribute-names QueueArn   --region $REGION   --query 'Attributes.QueueArn'   --output text)
