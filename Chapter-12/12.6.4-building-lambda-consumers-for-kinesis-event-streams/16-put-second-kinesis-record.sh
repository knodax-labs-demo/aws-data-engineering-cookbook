aws kinesis put-record   --stream-name $STREAM_NAME   --partition-key device-102   --data '{"device_id":"device-102","metric_value":88.1}'   --region $AWS_REGION
