import base64
import json

def lambda_handler(event, context):
    processed = 0

    for record in event["Records"]:
        payload = base64.b64decode(
            record["kinesis"]["data"]
        ).decode("utf-8")

        data = json.loads(payload)

        print({
            "message": "Processed Kinesis record",
            "partition_key": record["kinesis"]["partitionKey"],
            "device_id": data.get("device_id"),
            "metric_value": data.get("metric_value")
        })

        processed += 1

    return {
        "statusCode": 200,
        "processedRecords": processed
    }
