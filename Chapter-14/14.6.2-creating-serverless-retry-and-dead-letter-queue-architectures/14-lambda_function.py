import json

def lambda_handler(event, context):
    processed = 0

    for record in event["Records"]:
        payload = json.loads(record["body"])

        if payload.get("status") == "fail":
            raise ValueError(
                f"Invalid event received: {payload}"
            )

        print({
            "message": "Processed event successfully",
            "event_id": payload.get("event_id"),
            "dataset": payload.get("dataset")
        })

        processed += 1

    return {
        "statusCode": 200,
        "processedRecords": processed
    }
