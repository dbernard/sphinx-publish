# Sphinx Publish

A simple tool for publishing Python Sphinx documentation to the web via AWS S3
static hosting.

## Requirements

1. Valid AWS access and secret keys
2. The AWS CLI tools installed (`pip install awscli`)
3. Permission to upload to S3
4. Target S3 bucket configured to host static HTML
5. Built Sphinx documentation

## Usage

`./sphinx-publish.sh [DOC_BUILD_DIR] [S3_BUCKET_URL]`

