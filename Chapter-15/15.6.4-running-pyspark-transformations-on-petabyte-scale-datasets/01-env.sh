cat > env.sh <<'EOF'
export ACCOUNT_ID=$(aws sts get-caller-identity   --query Account   --output text)export REGION=us-east-1

export RAW_BUCKET=pyspark-petabyte-raw-$ACCOUNT_ID
export CURATED_BUCKET=pyspark-petabyte-curated-$ACCOUNT_ID

export CLUSTER_NAME=PetabytePySparkCluster
export KEY_NAME=my-emr-keypair
EOF
