export ORG_ROOT_ID=$(aws organizations list-roots   --query 'Roots[0].Id'   --output text)
