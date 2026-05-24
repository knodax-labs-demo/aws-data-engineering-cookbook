aws glue batch-create-partition   --database-name $DATABASE_NAME   --table-name $TABLE_NAME   --partition-input-list '[
    {
      "Values": ["2026","05"],
      "StorageDescriptor": {
        "Columns": [
          {
            "Name": "customer_id",
            "Type": "int"
          },
          {
            "Name": "customer_name",
            "Type": "string"
          },
          {
            "Name": "region",
            "Type": "string"
          },
          {
            "Name": "sales_amount",
            "Type": "int"
          }
        ],
        "Location": "s3://'"$RAW_BUCKET"'/sales/year=2026/month=05/",
        "InputFormat": "org.apache.hadoop.mapred.TextInputFormat",
        "OutputFormat": "org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat",
        "SerdeInfo": {
          "SerializationLibrary": "org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe",
          "Parameters": {
            "field.delim": ",",
            "skip.header.line.count": "1"
          }
        }
      }
    }
  ]'   --region $REGION
