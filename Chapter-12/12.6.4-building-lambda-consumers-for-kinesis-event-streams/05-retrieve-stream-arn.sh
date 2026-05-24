STREAM_ARN=$(aws kinesis describe-stream   --stream-name $STREAM_NAME   --region $AWS_REGION   --query 'StreamDescription.StreamARN'   --output text)
