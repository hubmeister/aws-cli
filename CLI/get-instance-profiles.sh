#!/bin/bash
aws iam list-instance-profiles > /tmp/get-instance-profiles.output.`date +%Y_%m_%d`
