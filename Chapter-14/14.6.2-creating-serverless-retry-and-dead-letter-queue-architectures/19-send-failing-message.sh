aws sqs send-message   --queue-url $MAIN_QUEUE_URL   --message-body '{"event_id":"evt-002","dataset":"sales","status":"fail"}'   --region $AWS_REGION
