aws cloudwatch describe-alarms   --alarm-names $CW_ALARM_NAME   --query "MetricAlarms[*].StateValue"
