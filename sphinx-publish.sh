#!/bin/bash
# Publish Sphinx generated docs to S3. This requires that you have the AWS CLI
# tools installed, AWS keys, and permission to write to S3 buckets.

GREEN='\033[0;32m'
NC='\033[0m'

[ $# -eq 0 ] && { echo "Usage: $0 [DOC_BUILD_DIR] [S3_BUCKET_URL]"; exit 1; }

aws configure

echo
echo -e "${GREEN}Syncing documentation to S3...${NC}"

DIR=$( cd $1 && pwd )

aws s3 sync $DIR/html/ $2

echo
echo -e "${GREEN}Done.${NC}"
