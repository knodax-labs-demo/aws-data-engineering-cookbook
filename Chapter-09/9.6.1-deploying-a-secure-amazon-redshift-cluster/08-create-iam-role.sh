aws iam create-role   --role-name $REDSHIFT_IAM_ROLE   --assume-role-policy-document   file://trust-policy.json
