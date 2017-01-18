#!/bin/bash

# This script will retrieve the latest Amazon Linux AMIs.
# Each AMI will be displayed one per line, and for each line,
# you'll get tab separated output:
#
# region  image_id  name  description
#
#
# If you run this script with no arguments you'll get the
# AMIs in every region.  Otherwise you can provide
# a "-r | --region" option that will only display
# images for the specified region.

list_amis() {
  # Tab separated output
  # region      image_id        name    description
  local region_name="$1"
  aws ec2 describe-images \
    --filters \
      Name=owner-alias,Values=amazon \
      Name=name,Values="Windows_Server*" \
      Name=architecture,Values=x86_64 \
      Name=virtualization-type,Values=hvm \
      Name=root-device-type,Values=ebs \
      Name=block-device-mapping.volume-type,Values=gp2 \
    --region "$region_name" \
    --query "reverse(sort_by(Images[? !contains(Name, 'rc')], &CreationDate))[*].['$region_name',ImageId,Name,Description]" \
    --output text
}

list_amis "us-west-2"
