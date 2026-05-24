MAIN_QUEUE_ARN=$(aws sqs get-queue-attributes   --queue-url "$MAIN_QUEUE_URL"   --attribute-names QueueArn   --region "$AWS_REGION"   --query 'Attributes.QueueArn'   --output text)
