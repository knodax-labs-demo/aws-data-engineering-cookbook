export OU_ID=$(aws organizations list-organizational-units-for-parent   --parent-id "$ORG_ROOT_ID"   --query "OrganizationalUnits[?Name=='$TARGET_OU_NAME'].Id | [0]"   --output text)
