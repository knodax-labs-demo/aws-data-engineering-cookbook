aws cloudtrail put-event-selectors   --trail-name $TRAIL_NAME   --event-selectors '[
    {
      "ReadWriteType":"All",
      "IncludeManagementEvents":true,
      "DataResources":[
        {
          "Type":"AWS::S3::Object",
          "Values":[
            "arn:aws:s3:::'"$LOG_BUCKET"'/"
          ]
        }
      ]
    }
  ]'   --region $REGION
