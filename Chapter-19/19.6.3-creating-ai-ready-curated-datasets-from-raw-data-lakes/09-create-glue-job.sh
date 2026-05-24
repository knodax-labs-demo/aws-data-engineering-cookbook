aws glue create-job --name ai-curation-job --role AWSGlueServiceRole --command '{"Name":"glueetl","ScriptLocation":"s3://de-ai-raw-zone-demo/scripts/ai_etl_job.py"}'
