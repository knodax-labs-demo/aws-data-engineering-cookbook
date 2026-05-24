ROLE_ARN=$(aws iam get-role   --role-name $REDSHIFT_IAM_ROLE   --query 'Role.Arn'   --output text)
 
echo $ROLE_ARN
