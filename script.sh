#!bin/bash

# Author: Charan
# Date : 11th Jan
# Version: v1

# this will help others debugging the script
set -x

# This script will report the AWS Resource usage
# s3
# EC2
# Lambda
# IAM Users

# List s3 Buckets
echo  "Listing S3 buckets"
# aws s3 ls --region us-east-1 | awk '{print $3}' > bucket_list.txt
aws s3 ls

# List Ec2 cli  
echo "Listing EC2 instances"
aws ec2 describe-instances

# List lamda functions
echo "Listing lambda functions"
aws lambda list-functions

# List IAM Users
echo "List of IAM users in this account"
aws iam list-users

