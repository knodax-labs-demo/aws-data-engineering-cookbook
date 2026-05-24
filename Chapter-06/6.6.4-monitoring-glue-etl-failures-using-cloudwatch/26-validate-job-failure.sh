aws glue get-job-runs   --job-name $GLUE_JOB_NAME   --query "JobRuns[0].JobRunState"
