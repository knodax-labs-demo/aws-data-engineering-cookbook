aws lambda add-permission   --function-name $FUNCTION_NAME   --principal s3.amazonaws.com   --statement-id s3invokepermission   --action lambda:InvokeFunction   --source-arn arn:aws:s3:::$BUCKET_NAME
