QUEUE_URL=$(aws sqs create-queue   --queue-name $QUEUE_NAME   --attributes file://queue-attributes.json   --region $REGION   --query 'QueueUrl'   --output text)
