cat > env.sh <<'EOF'
export ACCOUNT_ID=<ACCOUNT-ID>
export REGION=us-east-1

export DATA_BUCKET=redshift-spectrum-data-$ACCOUNT_ID

export DATABASE_NAME=spectrum_db
export TABLE_NAME=sales_data
EOF
