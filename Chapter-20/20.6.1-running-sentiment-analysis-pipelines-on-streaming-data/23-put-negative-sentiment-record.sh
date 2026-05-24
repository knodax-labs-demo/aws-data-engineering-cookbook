aws kinesis put-record   --stream-name sentiment-stream   --partition-key "user2"   --data "$(echo -n 'Customer support response time was terrible.' | base64)"   --region "$REGION"
