#!/bin/bash
#
rm -rf instances-with-instance-store-root-device.`date "+20%y_%m_%d"`
aws ec2 describe-instances | jq -c '.Reservations[] | select(.Instances[].RootDeviceType == "instance-store") | [.Instances[].InstanceId, .Instances[].LaunchTime, .Instances[].Tags[].Value]' > instances-with-instance-store-root-device.`date "+20%y_%m_%d"`
