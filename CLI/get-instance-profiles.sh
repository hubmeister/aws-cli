#!/bin/bash
aws iam list-instance-profiles > get-instance-profiles.output.`date +%Y_%m_%d`
