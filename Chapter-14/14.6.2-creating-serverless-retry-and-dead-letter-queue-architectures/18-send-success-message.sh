aws sqs send-message   --queue-url $MAIN_QUEUE_URL   --message-body '{"event_id":"evt-001","dataset":"sales","status":"success"}'   --region $AWS_REGION
