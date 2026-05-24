import boto3
import csv
import io
import json
import os

s3 = boto3.client("s3")

CURATED_BUCKET = os.environ["CURATED_BUCKET"]

def lambda_handler(event, context):
    processed = 0

    for record in event["Records"]:
        sns_envelope = json.loads(record["body"])
        message = json.loads(sns_envelope["Message"])

        source_bucket = message["bucket"]
        source_key = message["key"]

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

        output_key = f"curated/{source_key.rsplit('/', 1)[-1]}"

        s3.put_object(
            Bucket=CURATED_BUCKET,
            Key=output_key,
            Body=output_file.getvalue()
        )

        processed += 1

    return {
        "statusCode": 200,
        "processedMessages": processed
    }
