cat > env.sh <<'EOF'
export ACCOUNT_ID=<ACCOUNT-ID>
export REGION=us-east-1

export DATA_BUCKET=secure-analytics-transport-$ACCOUNT_ID
 export CLUSTER_NAME=SecureEMRCluster
EOF
