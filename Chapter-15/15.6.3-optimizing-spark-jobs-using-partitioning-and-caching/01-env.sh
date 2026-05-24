cat > env.sh <<'EOF'
export ACCOUNT_ID=$(aws sts get-caller-identity   --query Account   --output text)

export REGION=us-east-1

export RAW_BUCKET=optimized-spark-raw-$ACCOUNT_ID
export CURATED_BUCKET=optimized-spark-curated-$ACCOUNT_ID

export CLUSTER_NAME=OptimizedSparkCluster

export KEY_NAME=my-emr-keypair
EOF
