cat > env.sh <<'EOF'
export ACCOUNT_ID=$(aws sts get-caller-identity   --query Account   --output text)
export REGION=us-east-1

export CURATED_BUCKET=kafka-spark-streaming-output-$ACCOUNT_ID

export CLUSTER_NAME=KafkaSparkStreamingCluster
export KEY_NAME=my-emr-keypair

EOF
