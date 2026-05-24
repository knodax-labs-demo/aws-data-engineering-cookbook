cat > env.sh <<'EOF'
export ACCOUNT_ID=<ACCOUNT-ID>
export REGION=us-east-1

export LOG_BUCKET=compliance-logging-$ACCOUNT_ID

export TRAIL_NAME=ComplianceLoggingTrail

export LOG_GROUP_NAME=/aws/data-engineering/compliance

export CLUSTER_NAME=ComplianceEMRCluster
EOF
