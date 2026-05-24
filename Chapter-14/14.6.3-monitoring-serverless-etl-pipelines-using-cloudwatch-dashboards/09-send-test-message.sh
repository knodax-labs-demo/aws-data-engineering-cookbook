aws sqs send-message   --queue-url $QUEUE_URL   --message-body '{"event_id":"evt-101","dataset":"sales"}'   --region $AWS_REGION
