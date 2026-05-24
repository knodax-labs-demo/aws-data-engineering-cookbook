aws glue get-crawler --name churn-raw-crawler   --query 'Crawler.{State:State,LastCrawl:LastCrawl,Targets:Targets}'
