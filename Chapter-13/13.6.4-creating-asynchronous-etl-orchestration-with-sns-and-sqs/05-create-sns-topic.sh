TOPIC_ARN=$(aws sns create-topic   --name $TOPIC_NAME   --region $REGION   --query 'TopicArn'   --output text)
