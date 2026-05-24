import boto3
from datetime import datetime, timezone

s3 = boto3.client('s3')
cloudwatch = boto3.client('cloudwatch')
sns = boto3.client('sns')

BUCKET_NAME = 'de-pipeline-sla-demo'
SNS_TOPIC = 'arn:aws:sns:<REGION>:<ACCOUNT_ID>:pipeline-sla-alerts'

SLA_THRESHOLD_MINUTES = 60

def lambda_handler(event, context):

    response = s3.list_objects_v2(
        Bucket=BUCKET_NAME,
        Prefix='curated/'
    )

    latest_time = None

    for obj in response.get('Contents', []):
        modified = obj['LastModified']

        if latest_time is None or modified > latest_time:
            latest_time = modified

    if latest_time is None:
        return

    current_time = datetime.now(timezone.utc)

    freshness_minutes = (
        current_time - latest_time
    ).total_seconds() / 60

    cloudwatch.put_metric_data(
        Namespace='DataEngineering/SLA',
        MetricData=[
            {
                'MetricName': 'DatasetFreshnessMinutes',
                'Value': freshness_minutes
            }
        ]
    )

    if freshness_minutes > SLA_THRESHOLD_MINUTES:

        sns.publish(
            TopicArn=SNS_TOPIC,
            Subject='Pipeline SLA Violation',
            Message=f'Dataset freshness exceeded SLA: {freshness_minutes} minutes'
        )

    return {
        'freshness_minutes': freshness_minutes
    }
