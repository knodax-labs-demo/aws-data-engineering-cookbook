export SNS_TOPIC_ARN=$(aws sns create-topic   --name $SNS_TOPIC_NAME   --query TopicArn   --output text   --region $REGION)
