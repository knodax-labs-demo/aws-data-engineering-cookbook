import json
import boto3
import base64
from datetime import datetime

comprehend = boto3.client('comprehend')
s3 = boto3.client('s3')

BUCKET_NAME = 'de-streaming-sentiment-demo'

def lambda_handler(event, context):

    results = []

    for record in event['Records']:

        payload = base64.b64decode(
            record['kinesis']['data']
        ).decode('utf-8')

        sentiment_response = comprehend.detect_sentiment(
            Text=payload,
            LanguageCode='en'
        )

        result = {
            "timestamp": datetime.utcnow().isoformat(),
            "message": payload,
            "sentiment": sentiment_response['Sentiment'],
            "scores": sentiment_response['SentimentScore']
        }

        results.append(result)

    output_key = f"sentiment-results/{datetime.utcnow().timestamp()}.json"

    s3.put_object(
        Bucket=BUCKET_NAME,
        Key=output_key,
        Body=json.dumps(results)
    )

    return {
        "statusCode": 200,
        "body": json.dumps(results)
    }
