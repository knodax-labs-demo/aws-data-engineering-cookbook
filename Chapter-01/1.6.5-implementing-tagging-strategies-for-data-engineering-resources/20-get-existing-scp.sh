export SCP_ID=$(aws organizations list-policies   --filter SERVICE_CONTROL_POLICY   --query "Policies[?Name=='$SCP_NAME'].Id | [0]"   --output text)
