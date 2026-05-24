aws glue create-job   --name $GLUE_JOB_NAME   --role $GLUE_ROLE_NAME   --command '{
    "Name":"glueetl",
    "ScriptLocation":"s3://'"$PROCESSED_BUCKET"'/scripts/secure_glue_job.py",
    "PythonVersion":"3"
  }'   --glue-version "4.0"   --worker-type G.1X   --number-of-workers 2   --security-configuration $GLUE_SECURITY_CONFIG
