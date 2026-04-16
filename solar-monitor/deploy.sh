#!/bin/bash
echo "🚀 Deploying Solar Monitor to S3..."

# 1. Sync the files to the bucket
aws --endpoint-url=http://localhost:4566 s3 sync . s3://solar-monitor-bucket --exclude "deploy.sh" --exclude "policy.json"

# 2. Apply the security policy
aws --endpoint-url=http://localhost:4566 s3api put-bucket-policy --bucket solar-monitor-bucket --policy file://policy.json

echo "✅ Deployment Complete! Dashboard is live."
