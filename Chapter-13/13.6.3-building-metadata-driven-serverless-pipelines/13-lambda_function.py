import boto3
import csv
import io
import json
import os
import urllib.parse

s3 = boto3.client("s3")
dynamodb = boto3.client("dynamodb")

TABLE_NAME = os.environ["TABLE_NAME"]
CURATED_BUCKET = os.environ["CURATED_BUCKET"]

def lambda_handler(event, context):

    detail = event["detail"]

    source_bucket = detail["bucket"]["name"]

    source_key = urllib.parse.unquote_plus(
        detail["object"]["key"]
    )

    dataset_type = source_key.split("/")[0]

    metadata = dynamodb.get_item(
        TableName=TABLE_NAME,
        Key={
            "dataset_type": {
                "S": dataset_type
            }
        }
    )

    config = metadata["Item"]

    target_prefix = config["target_prefix"]["S"]

    response = s3.get_object(
        Bucket=source_bucket,
        Key=source_key
    )

    raw_content = response["Body"].read().decode("utf-8")

    input_file = io.StringIO(raw_content)
    output_file = io.StringIO()

    reader = csv.DictReader(input_file)

    writer = csv.DictWriter(
        output_file,
        fieldnames=reader.fieldnames
    )

    writer.writeheader()

    for row in reader:
        cleaned = {
            k: v.strip().title()
            if isinstance(v, str)
            else v
            for k, v in row.items()
        }

        writer.writerow(cleaned)

    output_key = (
        target_prefix +
        source_key.rsplit("/", 1)[-1]
    )

    s3.put_object(
        Bucket=CURATED_BUCKET,
        Key=output_key,
        Body=output_file.getvalue()
    )

    return {
        "statusCode": 200,
        "body": f"Processed {source_key}"
    }
