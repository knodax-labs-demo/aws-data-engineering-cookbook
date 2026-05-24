cat > env.sh <<'EOF'
export ACCOUNT_ID=$(aws sts get-caller-identity   --query Account   --output text)export REGION=us-east-1
export REGION=us-east-1

export RAW_BUCKET=glue-catalog-raw-$ACCOUNT_ID

export DATABASE_NAME=analytics_db
export TABLE_NAME=sales_data

export CLUSTER_NAME=GlueCatalogEMRCluster

export KEY_NAME=my-emr-keypair
EOF
