aws events put-rule   --name MacieSensitiveDataFindings   --event-pattern '{
    "source": ["aws.macie"],
    "detail-type": ["Macie Finding"]
  }'   --region $REGION
