cat > env.sh <<'EOF'
export ACCOUNT_ID=$(aws sts get-caller-identity   --query Account   --output text)
export REGION=us-east-1

export TABLE_NAME=customer-orders

export CDC_BUCKET=cdc-data-lake-$ACCOUNT_ID

export FUNCTION_NAME=CDCStreamProcessor
export ROLE_NAME=CDCStreamProcessorRole
export POLICY_NAME=CDCStreamProcessorPolicy
EOF
