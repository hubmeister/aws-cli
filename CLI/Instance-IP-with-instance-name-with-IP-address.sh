#!/bin/bash
#
# create an output file that includes the IP address
#
rm -rf /tmp/Instance-IP-with-instance-name-with-IP-address.output.`date "+20%y_%m_%d"`
for i in `cat ra2-instance-list`
do
	grep $i Instance-IP-with-instance-name.output.2016_12_12 >>  /tmp/Instance-IP-with-instance-name-with-IP-address.output.`date "+20%y_%m_%d"`
done

