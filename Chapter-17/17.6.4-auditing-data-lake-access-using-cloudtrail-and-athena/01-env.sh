cat > env.sh <<'EOF'
export ACCOUNT_ID=<ACCOUNT-ID>
export REGION=us-east-1

export DATA_BUCKET=datalake-audit-data-$ACCOUNT_ID
export CLOUDTRAIL_BUCKET=cloudtrail-audit-logs-$ACCOUNT_ID

export TRAIL_NAME=DataLakeAuditTrail

export ATHENA_DATABASE=audit_logs_db
export ATHENA_TABLE=cloudtrail_logs
EOF
