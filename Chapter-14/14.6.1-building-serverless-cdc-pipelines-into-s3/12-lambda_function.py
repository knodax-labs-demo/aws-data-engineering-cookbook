import boto3
import json
import os
import time

s3 = boto3.client("s3")

CDC_BUCKET = os.environ["CDC_BUCKET"]

def lambda_handler(event, context):

    processed = 0

    for record in event["Records"]:

        event_name = record["eventName"]

        dynamodb_record = record["dynamodb"]

        payload = {
            "event_type": event_name,
            "event_id": record["eventID"],
            "timestamp": int(time.time()),
            "data": dynamodb_record
        }

        object_key = (
            f"cdc-events/"
            f"{event_name}/"
            f"{record['eventID']}.json"
        )

        s3.put_object(
            Bucket=CDC_BUCKET,
            Key=object_key,
            Body=json.dumps(payload)
        )

        processed += 1

    return {
        "statusCode": 200,
        "processedRecords": processed
    }
