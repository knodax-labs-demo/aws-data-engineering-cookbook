cat > env.sh <<'EOF'
export ACCOUNT_ID=$(aws sts get-caller-identity   --query Account   --output text)

export REGION=us-east-1

export DATA_BUCKET=lakeformation-security-$ACCOUNT_ID

export DATABASE_NAME=secure_data_lake
export TABLE_NAME=employee_records

export ANALYST_ROLE=LakeFormationAnalystRole
export ANALYST_PRINCIPAL_ARN=arn:aws:iam::$ACCOUNT_ID:role/$ANALYST_ROLE
EOF
