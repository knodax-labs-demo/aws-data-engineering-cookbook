cat > env.sh <<'EOF'
export ACCOUNT_ID=<ACCOUNT-ID>
export REGION=us-east-1

export DATA_BUCKET=central-governance-lake-$ACCOUNT_ID

export DATABASE_NAME=enterprise_data_lake
export TABLE_NAME=customer_orders

export ANALYST_ROLE=BusinessAnalystRole
export ENGINEER_ROLE=DataEngineerRole
EOF
