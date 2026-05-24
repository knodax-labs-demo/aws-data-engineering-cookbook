DLQ_URL=$(aws sqs create-queue   --queue-name $DLQ_NAME   --region $REGION   --query 'QueueUrl'   --output text)
