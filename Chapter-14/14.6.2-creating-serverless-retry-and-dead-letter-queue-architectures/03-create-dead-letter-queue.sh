DLQ_URL=$(aws sqs create-queue   --queue-name $DLQ_NAME   --region $AWS_REGION   --query 'QueueUrl'   --output text)
