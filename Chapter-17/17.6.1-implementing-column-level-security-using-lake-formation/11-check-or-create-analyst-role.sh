aws iam get-role   --role-name $ANALYST_ROLE   || aws iam create-role     --role-name $ANALYST_ROLE     --assume-role-policy-document file://trust-policy.json
