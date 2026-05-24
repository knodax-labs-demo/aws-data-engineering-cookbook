import json

THRESHOLD = 80

def lambda_handler(event, context):

    for record in event['Records']:

        payload = json.loads(
            record['kinesis']['data']
        )

        metric = payload['metric_value']

        if metric > THRESHOLD:

            print(
                f"ANOMALY DETECTED: "
                f"{payload}"
            )

    return {
        'statusCode': 200
    }
