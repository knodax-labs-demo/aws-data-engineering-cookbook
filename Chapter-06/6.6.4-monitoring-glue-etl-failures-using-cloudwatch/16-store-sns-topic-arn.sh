export SNS_TOPIC_ARN=$(aws sns list-topics   --query "Topics[?contains(TopicArn, '$SNS_TOPIC_NAME')].TopicArn"   --output text)
