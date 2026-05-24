FINDING_ID=$(aws macie2 list-findings   --region $REGION   --query 'findingIds[0]'   --output text)

aws macie2 get-findings   --finding-ids $FINDING_ID   --region $REGION
