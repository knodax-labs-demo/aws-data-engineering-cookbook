aws s3api put-public-access-block   --bucket $LOG_BUCKET   --public-access-block-configuration   BlockPublicAcls=true,IgnorePublicAcls=true,BlockPublicPolicy=true,RestrictPublicBuckets=true
