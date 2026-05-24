cat > env.sh <<'EOF'
export ACCOUNT_ID=<ACCOUNT-ID>
export REGION=us-east-1

export DATA_BUCKET=macie-sensitive-data-$ACCOUNT_ID

export MACIE_JOB_NAME=SensitiveDataInspectionJob
EOF
