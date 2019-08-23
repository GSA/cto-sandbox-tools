#!/usr/bin/env bash

# Tag key/value that identifies the admin box
key="PILOT-ACTIVITY"
value="octo-admin-box"

query=".Reservations[].Instances[] | select(.Tags[].Key == \"${key}\" and .Tags[].Value == \"${value}\") | .PublicDnsName"
aws ec2 describe-instances | jq -r "$query"
