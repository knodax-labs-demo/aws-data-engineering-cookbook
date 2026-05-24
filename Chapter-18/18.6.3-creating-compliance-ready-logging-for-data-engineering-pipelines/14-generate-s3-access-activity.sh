echo "Compliance logging validation" > validation.txt
aws s3 cp validation.txt   s3://$LOG_BUCKET/
