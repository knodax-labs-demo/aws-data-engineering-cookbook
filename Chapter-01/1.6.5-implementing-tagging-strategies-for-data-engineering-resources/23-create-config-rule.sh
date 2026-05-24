aws configservice put-config-rule   --config-rule '{
    "ConfigRuleName": "required-data-engineering-tags",
    "Source": {
      "Owner": "AWS",
      "SourceIdentifier": "REQUIRED_TAGS"
    },
    "InputParameters": "{\"tag1Key\":\"Environment\",\"tag2Key\":\"Owner\",\"tag3Key\":\"CostCenter\",\"tag4Key\":\"DataDomain\"}"
  }'   --region "$REGION"
