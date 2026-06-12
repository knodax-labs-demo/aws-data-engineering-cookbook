<img width="1280" height="640" al<img width="1280" height="640" alt="aws-data-cengineering-ookbook-github" src="https://github.com/user-attachments/assets/dc65c6de-3f82-4e9b-8126-3d76c8f8ebbf" />


<p align="center">
  <strong>⭐ If this repository helps you, please give it a star! ⭐</strong>
</p>

<h1 align="center">
AWS Data Engineering Cookbook
</h1>

<p align="center">
Hands-On Recipes for Building Modern Data Lakes, ETL Pipelines, Streaming Platforms, Analytics Systems, and Lakehouse Architectures on AWS
</p>

<p align="center">
Production-ready AWS data engineering recipes using Amazon S3, AWS Glue, Athena, Redshift, EMR, Kinesis, Lambda, Lake Formation, Step Functions, QuickSight, and more.
</p>

<hr />

<h2>📘 About This Repository</h2>

<p>
This repository contains the complete companion source code for the book:
<strong>AWS Data Engineering Cookbook</strong> by <strong>KnoDAX</strong>.
</p>

<p>
The recipes focus on real-world AWS data engineering implementation patterns with hands-on examples designed for data engineers, cloud engineers, analytics engineers, DevOps engineers, architects, and AWS certification learners.
</p>

<ul>
  <li>Step-by-step data engineering recipes</li>
  <li>Production-focused implementations</li>
  <li>AWS CLI, Bash, and Python examples</li>
  <li>ETL and analytics automation workflows</li>
  <li>Streaming and batch processing architectures</li>
  <li>Security, governance, and compliance patterns</li>
  <li>Lakehouse and modern analytics architectures</li>
</ul>

<hr />

<h2>⚠️ Read-Only Repository</h2>

<p>
This repository is intentionally maintained as a <strong>read-only companion repository</strong>.
</p>

<ul>
  <li>Pull requests are disabled</li>
  <li>Issues are disabled</li>
  <li>Discussions are disabled</li>
  <li>External contributions are not accepted</li>
</ul>

<p>
This helps maintain stable, validated, and production-consistent code examples for readers.
</p>

<hr />

<h2>📂 Repository Structure</h2>

<pre>
Chapter-01/
Chapter-02/
Chapter-03/
...
Chapter-20/
Appendices/
</pre>

<p>Each recipe typically includes:</p>

<ul>
  <li>AWS CLI commands</li>
  <li>Bash automation scripts</li>
  <li>Python examples</li>
  <li>IAM policies</li>
  <li>CloudFormation snippets</li>
  <li>PySpark ETL examples</li>
  <li>Validation and cleanup steps</li>
</ul>

<hr />

<h2>🚀 Quick Setup</h2>

<h3>1. Install AWS CLI</h3>

<pre><code>aws --version</code></pre>

<p>
Install AWS CLI if needed:
<a href="https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html">
AWS CLI Installation Guide
</a>
</p>

<h3>2. Configure AWS Credentials</h3>

<pre><code>aws configure</code></pre>

<h3>3. Verify AWS Access</h3>

<pre><code>aws sts get-caller-identity</code></pre>

<hr />

<h2>🧪 Running a Recipe</h2>

<pre><code>cd Chapter-05/5.6.3-building-serverless-etl-pipelines-using-aws-glue-jobs
bash script.sh</code></pre>

<hr />

<h2>📚 Topics Covered</h2>

<h3>🏗️ AWS Data Engineering Foundations</h3>

<ul>
  <li>Secure S3 data lakes</li>
  <li>Lakehouse zone architectures</li>
  <li>AWS CLI automation environments</li>
  <li>IAM Identity Center integration</li>
  <li>Tagging and governance strategies</li>
</ul>

<h3>🔒 Security, Governance, and Cost Management</h3>

<ul>
  <li>AWS Organizations</li>
  <li>AWS Config rules</li>
  <li>Centralized logging</li>
  <li>Encryption enforcement</li>
  <li>S3 Glacier archival strategies</li>
  <li>AWS Budgets and Cost Explorer</li>
</ul>

<h3>🪣 Modern Amazon S3 Data Lakes</h3>

<ul>
  <li>Partitioned data lakes</li>
  <li>S3 Object Lock</li>
  <li>Multipart uploads</li>
  <li>Schema evolution</li>
  <li>Cross-region replication</li>
  <li>VPC endpoint restrictions</li>
  <li>Immutable audit logging</li>
</ul>

<h3>⚙️ AWS Glue ETL and Metadata Management</h3>

<ul>
  <li>Glue Data Catalog</li>
  <li>Glue Crawlers</li>
  <li>Serverless ETL pipelines</li>
  <li>PySpark transformations</li>
  <li>Schema drift handling</li>
  <li>Glue workflows and orchestration</li>
  <li>CloudWatch monitoring for Glue</li>
</ul>

<h3>📊 Interactive Analytics with Athena</h3>

<ul>
  <li>Serverless SQL analytics</li>
  <li>Partition projection</li>
  <li>Federated queries</li>
  <li>Athena views</li>
  <li>CloudTrail analytics</li>
  <li>Athena + QuickSight integrations</li>
</ul>

<h3>🏢 Enterprise Data Warehousing with Redshift</h3>

<ul>
  <li>Redshift cluster deployment</li>
  <li>COPY-based ingestion</li>
  <li>ELT pipelines</li>
  <li>Sort and distribution keys</li>
  <li>Snapshot automation</li>
  <li>Redshift Spectrum</li>
  <li>Workload management queues</li>
</ul>

<h3>⚡ Real-Time Streaming Data Engineering</h3>

<ul>
  <li>Amazon Kinesis Data Streams</li>
  <li>Kinesis Firehose</li>
  <li>Streaming IoT telemetry</li>
  <li>KMS stream encryption</li>
  <li>Lambda consumers</li>
  <li>Amazon MSK concepts</li>
  <li>Streaming anomaly detection</li>
</ul>

<h3>☁️ Serverless Data Engineering Pipelines</h3>

<ul>
  <li>Lambda-based ETL</li>
  <li>EventBridge automation</li>
  <li>SNS and SQS orchestration</li>
  <li>Metadata-driven pipelines</li>
  <li>CDC architectures</li>
  <li>Dead-letter queues</li>
  <li>CloudWatch dashboards</li>
</ul>

<h3>🧠 Big Data Processing with Amazon EMR</h3>

<ul>
  <li>Apache Spark on EMR</li>
  <li>Hadoop cluster architectures</li>
  <li>PySpark transformations</li>
  <li>Partitioning and caching optimization</li>
  <li>Spot Instance optimization</li>
  <li>Presto distributed SQL</li>
  <li>Spark Streaming pipelines</li>
</ul>

<h3>🛡️ Data Governance, Security, and Compliance</h3>

<ul>
  <li>AWS Lake Formation</li>
  <li>Column-level security</li>
  <li>Centralized governance</li>
  <li>Data retention policies</li>
  <li>Amazon Macie</li>
  <li>CloudTrail auditing</li>
  <li>TLS and HTTPS enforcement</li>
</ul>

<h3>🤖 Analytics, Machine Learning, and Lakehouse Architectures</h3>

<ul>
  <li>Amazon QuickSight dashboards</li>
  <li>AI-ready curated datasets</li>
  <li>SageMaker integrations</li>
  <li>Recommendation pipelines</li>
  <li>Streaming sentiment analysis</li>
  <li>Data quality validation workflows</li>
  <li>Modern AWS lakehouse architectures</li>
</ul>

<hr />

<h2>📖 Book Structure</h2>

<ul>
  <li>Part I — AWS Data Engineering Foundations</li>
  <li>Part II — Building Modern Data Lakes with Amazon S3</li>
  <li>Part III — ETL and Metadata Management with AWS Glue</li>
  <li>Part IV — Interactive Analytics with Amazon Athena</li>
  <li>Part V — Enterprise Data Warehousing with Amazon Redshift</li>
  <li>Part VI — Real-Time Streaming Data Engineering</li>
  <li>Part VII — Serverless Data Engineering Pipelines</li>
  <li>Part VIII — Big Data Processing with Amazon EMR</li>
  <li>Part IX — Data Governance, Security, and Compliance</li>
  <li>Part X — Analytics, Machine Learning, and Lakehouse Architectures</li>
</ul>

<hr />

<h2>💰 AWS Cost Warning</h2>

<p>
Some recipes create billable AWS resources.
</p>

<p>
To avoid unexpected AWS charges:
</p>

<ul>
  <li>Always follow cleanup steps</li>
  <li>Delete unused resources after testing</li>
  <li>Monitor the AWS Billing Dashboard</li>
  <li>Use small test environments when possible</li>
</ul>

<hr />

<h2>🎯 Who This Repository Is For</h2>

<ul>
  <li>Data Engineers</li>
  <li>Analytics Engineers</li>
  <li>Cloud Engineers</li>
  <li>DevOps Engineers</li>
  <li>Solutions Architects</li>
  <li>Big Data Engineers</li>
  <li>AWS Certification Learners</li>
</ul>

<hr />

<h2>📘 Get the Book</h2>

<p>
<strong>AWS Data Engineering Cookbook</strong>
</p>

<p>
Learn AWS data engineering through structured explanations, hands-on recipes, and real-world implementation patterns.
</p>

<p>
👉 <a href="https://www.amazon.com/dp/B0H2SK2J1T" target="_blank" rel="noopener noreferrer">
Get the book on Amazon
</a>
</p>

<hr />
<p>
<h2>Enjoying the AWS Data Engineering Cookbook: Practical Recipes for Scalable Data Pipelines and Analytics on AWS Book?</h2>

🔗 [Leave a Review on Amazon](https://www.amazon.com/review/create-review/?asin=B0H2SK2J1T)

Your feedback helps other readers discover the book and supports future KnoDAX publications.
Thank you for your support and for being part of the KnoDAX learning community.
<p>
