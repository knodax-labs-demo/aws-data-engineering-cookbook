export AWS_REGION=us-east-1
export ACCOUNT_ID=$(aws sts get-caller-identity --query Account --output text)
 
export GLUE_ROLE_NAME=GlueMonitoringRole
export GLUE_JOB_NAME=monitoring-demo-glue-job
 
export RAW_BUCKET=glue-monitoring-raw-$ACCOUNT_ID
export SNS_TOPIC_NAME=GlueFailureAlerts
 
export CW_ALARM_NAME=GlueJobFailureAlarm
