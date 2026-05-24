cat > env.sh <<'EOF'
export ACCOUNT_ID=$(aws sts get-caller-identity   --query Account   --output text)
export REGION=us-east-1

export RAW_BUCKET=presto-analytics-raw-$ACCOUNT_ID

export DATABASE_NAME=analytics_db
export TABLE_NAME=customer_sales

export CLUSTER_NAME=PrestoAnalyticsCluster

export KEY_NAME=my-emr-keypair
EOF
