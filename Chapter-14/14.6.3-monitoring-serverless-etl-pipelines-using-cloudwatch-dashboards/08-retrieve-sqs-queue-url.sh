QUEUE_URL=$(aws sqs get-queue-url   --queue-name $MAIN_QUEUE_NAME   --region $AWS_REGION   --query 'QueueUrl'   --output text)
