cat > env.sh <<'EOF'
export ACCOUNT_ID=<ACCOUNT-ID>
export REGION=us-east-1

export DATA_BUCKET=analytics-retention-policies-$ACCOUNT_ID

export DATABASE_NAME=retention_analytics_db
export TABLE_NAME=historical_events
EOF
