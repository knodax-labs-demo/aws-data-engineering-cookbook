cat > env.sh <<'EOF'
export ACCOUNT_ID=<ACCOUNT-ID>
export REGION=us-east-1

export DATA_BUCKET=encrypted-data-pipeline-$ACCOUNT_ID

export KMS_KEY_ALIAS=alias/data-engineering-key
export CLUSTER_NAME=EncryptedEMRCluster
EOF
