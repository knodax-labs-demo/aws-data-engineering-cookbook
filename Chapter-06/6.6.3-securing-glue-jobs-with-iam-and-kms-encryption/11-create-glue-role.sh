aws iam create-role   --role-name $GLUE_ROLE_NAME   --assume-role-policy-document file://glue-trust-policy.json
