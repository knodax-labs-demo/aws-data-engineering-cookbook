aws sqs set-queue-attributes   --queue-url $QUEUE_URL   --attributes Policy="$(cat sqs-policy.json)"   --region $REGION
