cat <<'EOF' > env.sh
export REGION=us-east-1
 
export ACCOUNT_ID=$(aws sts get-caller-identity   --query Account   --output text)
 
export VPC_ID=$(aws ec2 describe-vpcs   --query "Vpcs[0].VpcId"   --output text)
 
export ROUTE_TABLE_ID=$(aws ec2 describe-route-tables   --query "RouteTables[0].RouteTableId"   --output text)
 
export BUCKET_NAME=private-analytics-bucket-$ACCOUNT_ID
EOF
