aws s3api create-bucket   --bucket tagged-data-lake-$RANDOM   --region "$REGION"   --tags '[
    {
      "Key":"Environment",
      "Value":"Dev"
    },
    {
      "Key":"Owner",
      "Value":"DataEngineering"
    },
    {
      "Key":"CostCenter",
      "Value":"Analytics"
    }
  ]'
