cat > env.sh <<'EOF'
export ACCOUNT_ID=$(aws sts get-caller-identity   --query Account   --output text)

export REGION=us-east-1

export RAW_BUCKET=emr-spark-raw-$ACCOUNT_ID
export CURATED_BUCKET=emr-spark-curated-$ACCOUNT_ID

export CLUSTER_NAME=HadoopAnalyticsCluster

export EMR_ROLE=EMR_DefaultRole
export EC2_ROLE=EMR_EC2_DefaultRole

export KEY_NAME=my-emr-keypair
EOF
