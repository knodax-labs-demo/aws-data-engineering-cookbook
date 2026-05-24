export CLUSTER_ID=$(aws emr create-cluster   --name "$CLUSTER_NAME"   --release-label emr-7.0.0   --applications Name=Spark   --instance-type m5.xlarge   --instance-count 3   --use-default-roles   --ec2-attributes KeyName="$KEY_NAME"   --log-uri s3://"$RAW_BUCKET"/emr-logs/   --region "$REGION"   --query 'ClusterId'   --output text)

echo "$CLUSTER_ID"
