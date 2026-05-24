export VPC_ENDPOINT_ID=$(aws ec2 describe-vpc-endpoints   --query "VpcEndpoints[0].VpcEndpointId"   --output text)
