import pandas as pd

df = pd.read_parquet(
    "s3://$CURATED_BUCKET/curated/"
)

print(df.head())
