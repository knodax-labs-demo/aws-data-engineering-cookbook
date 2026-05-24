SUBSCRIPTION_ARN=$(aws sns list-subscriptions-by-topic   --topic-arn $TOPIC_ARN   --query 'Subscriptions[0].SubscriptionArn'   --output text   --region $REGION)
