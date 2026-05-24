cat > env.sh <<'EOF'
export ACCOUNT_ID=$(aws sts get-caller-identity   --query Account   --output text)
export REGION=us-east-1

EOF
