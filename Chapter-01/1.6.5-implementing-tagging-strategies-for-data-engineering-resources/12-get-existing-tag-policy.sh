export TAG_POLICY_ID=$(aws organizations list-policies   --filter TAG_POLICY   --query "Policies[?Name=='$TAG_POLICY_NAME'].Id | [0]"   --output text)
