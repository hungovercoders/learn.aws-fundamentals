#!/usr/bin/env bash
# Tear down the lesson 07 S3 bucket. Run with: ./cleanup.sh <bucket-name>
# Example: ./cleanup.sh tinyrebel-brewing-logs-griff-20260528

set -euo pipefail

BUCKET="${1:?Pass the bucket name as the first argument}"
PROFILE="${AWS_PROFILE:-brewery-admin}"

echo "Emptying $BUCKET (objects + all noncurrent versions) ..."
aws s3 rm "s3://$BUCKET" --recursive --profile "$PROFILE" || true

echo "Removing any noncurrent versions left by lifecycle / versioning ..."
aws s3api list-object-versions \
  --bucket "$BUCKET" \
  --profile "$PROFILE" \
  --output json \
  --query '{Objects: Versions[].{Key:Key,VersionId:VersionId}}' \
  > /tmp/versions.json 2>/dev/null || echo '{"Objects":[]}' > /tmp/versions.json

if [ "$(jq '.Objects | length' /tmp/versions.json)" -gt 0 ]; then
  aws s3api delete-objects \
    --bucket "$BUCKET" \
    --delete file:///tmp/versions.json \
    --profile "$PROFILE"
fi

echo "Deleting the bucket itself ..."
aws s3api delete-bucket --bucket "$BUCKET" --profile "$PROFILE"

echo "✓ $BUCKET removed"
