#!/usr/bin/env bash

if [ -z "$OCTO_ADMIN_USERNAME" ] && [ $# -eq 0 ] ; then
  echo "Set your OCTO_ADMIN_USERNAME environment variable or provide your username as an argument."
  exit 1
else
  username=${OCTO_ADMIN_USERNAME:-${1}}
fi

hostname=$(./admin-hostname.sh)
ssh ${OCTO_ADMIN_USERNAME}@${hostname}
