aws glue create-job   --name $JOB_NAME   --role arn:aws:iam::$ACCOUNT_ID:role/$ROLE_NAME   --command '{
    "Name":"glueetl",
    "ScriptLocation":"s3://'$BUCKET_NAME'/scripts/etl-script.py"
  }'   --glue-version "4.0"   --worker-type G.1X   --number-of-workers 2
