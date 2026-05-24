aws macie2 list-classification-jobs   --region $REGION   --query 'items[*].[jobId,name,jobStatus]'
