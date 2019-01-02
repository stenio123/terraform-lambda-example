#!/bin/sh

## This script will zip and upload a Lambda function to an S3 bucket

## S3_BUCKET=my-bucket ./deploy_zip.sh
S3_BUCKET=${S3_BUCKET:-terraform-aws-deploylambda}

zip example.zip main.js

## Ensure your aws client is correctly configured for your AWS account

aws s3api create-bucket --bucket=$S3_BUCKET --region=us-east-1

aws s3 cp example.zip s3://$S3_BUCKET/v1.0.0/example.zip