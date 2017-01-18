#!/bin/bash
rm -f instance-output-with-tags.`date "+20%y_%m_%d"`
aws ec2 describe-instances | jq -c '.Reservations[] | select(.Instances[].Tags[].Key == "Name") | [.Instances[].InstanceId, .Instances[].Tags[].Key, .Instances[].Tags[].Value]' > instance-output-with-tags.`date "+20%y_%m_%d"`
