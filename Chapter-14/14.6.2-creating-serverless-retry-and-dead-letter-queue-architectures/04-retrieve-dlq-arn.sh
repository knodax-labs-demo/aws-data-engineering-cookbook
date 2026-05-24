DLQ_ARN=$(aws sqs get-queue-attributes   --queue-url $DLQ_URL   --attribute-names QueueArn   --region $AWS_REGION   --query 'Attributes.QueueArn'   --output text)
