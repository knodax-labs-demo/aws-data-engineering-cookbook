import boto3
import csv
import io
import os
import urllib.parse

s3 = boto3.client("s3")

CURATED_BUCKET = os.environ["CURATED_BUCKET"]

def lambda_handler(event, context):
    record = event["Records"][0]

    source_bucket = record["s3"]["bucket"]["name"]
    source_key = urllib.parse.unquote_plus(
        record["s3"]["object"]["key"]
    )

    response = s3.get_object(
        Bucket=source_bucket,
        Key=source_key
    )

    raw_content = response["Body"].read().decode("utf-8")

    input_file = io.StringIO(raw_content)
    output_file = io.StringIO()

    reader = csv.DictReader(input_file)
    fieldnames = [
        "customer_id",
        "customer_name",
        "sales_amount",
        "sales_category"
    ]

    writer = csv.DictWriter(
        output_file,
        fieldnames=fieldnames
    )

    writer.writeheader()

    for row in reader:
        writer.writerow({
            "customer_id": row["customer_id"].strip(),
            "customer_name": row["customer_name"].strip().title(),
            "sales_amount": row["sales_amount"].strip(),
            "sales_category": row["sales_category"].strip().lower()
        })

    output_key = f"curated/{source_key.rsplit('/', 1)[-1]}"

    s3.put_object(
        Bucket=CURATED_BUCKET,
        Key=output_key,
        Body=output_file.getvalue().encode("utf-8")
    )

    return {
        "statusCode": 200,
        "body": f"Processed {source_key} into {output_key}"
    }
