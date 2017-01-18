#!/bin/bash
#aws cloudwatch list-metrics > cloudwatch-metrics.output

#aws cloudwatch  get-metric-statistics NumberOfNotificationsDelivered > cloudwatch-metrics-NumberOfNotificationsDelivered.output
aws cloudwatch get-metric-statistics --metric-name CPUUtilization --start-time 2016-09-08T23:18:00 --end-time 2016-09-09T23:18:00 --period 3600 --namespace AWS/EC2 --statistics Maximum --dimensions Name=InstanceId,Value=i-0e3005533ad4f0dad
