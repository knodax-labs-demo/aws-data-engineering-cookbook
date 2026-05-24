MAIN_QUEUE_URL=$(aws sqs create-queue   --queue-name $MAIN_QUEUE_NAME   --attributes file://sqs-attributes.json   --region $AWS_REGION   --query 'QueueUrl'   --output text)
