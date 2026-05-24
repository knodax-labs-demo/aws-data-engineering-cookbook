aws glue create-job   --name $GLUE_JOB_NAME   --role $GLUE_ROLE   --glue-version "4.0"   --worker-type G.1X   --number-of-workers 2   --command "{
    \"Name\":\"glueetl\",
    \"ScriptLocation\":\"s3://$RAW_BUCKET/scripts/data_quality_job.py\",
    \"PythonVersion\":\"3\"
  }"   --default-arguments '{
    "--job-language":"python",
    "--enable-metrics":"true",
    "--enable-continuous-cloudwatch-log":"true"
  }'   --region $REGION
