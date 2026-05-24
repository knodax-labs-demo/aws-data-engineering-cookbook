aws kinesis put-record   --stream-name $STREAM_NAME   --partition-key device-101   --data '{"device_id":"device-101","metric_value":42.5}'   --region $AWS_REGION
