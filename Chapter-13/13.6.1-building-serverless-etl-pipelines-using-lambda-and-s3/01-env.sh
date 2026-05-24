cat > env.sh <<'EOF'
export ACCOUNT_ID=$(aws sts get-caller-identity   --query Account   --output text)
export REGION=us-east-1

export RAW_BUCKET=raw-etl-data-bucket-$ACCOUNT_ID
export CURATED_BUCKET=curated-etl-data-bucket-$ACCOUNT_ID

export FUNCTION_NAME=S3ServerlessETLProcessor
export ROLE_NAME=LambdaS3ETLProcessorRole
export POLICY_NAME=LambdaS3ETLProcessorPolicy
EOF
