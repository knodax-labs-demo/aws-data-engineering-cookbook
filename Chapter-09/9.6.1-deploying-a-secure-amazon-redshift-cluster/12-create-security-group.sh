SG_ID=$(aws ec2 create-security-group   --group-name $REDSHIFT_SG   --description "Redshift SG"   --vpc-id $VPC_ID   --query 'GroupId'   --output text)
