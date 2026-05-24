aws events put-targets --rule pipeline-sla-schedule --targets "Id"="1","Arn"="arn:aws:lambda:<REGION>:<ACCOUNT_ID>:function:pipeline-sla-monitor"
