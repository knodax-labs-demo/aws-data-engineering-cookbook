aws glue create-job   --name $GLUE_JOB_NAME   --role $GLUE_ROLE_NAME   --command '{
    "Name":"glueetl",
    "ScriptLocation":"s3://'"$RAW_BUCKET"'/scripts/failing_glue_job.py",
    "PythonVersion":"3"
  }'   --glue-version "4.0"   --worker-type G.1X   --number-of-workers 2
