STREAM_ARN=$(aws kinesis describe-stream   --stream-name $STREAM_NAME   --query 'StreamDescription.StreamARN'   --output text)
