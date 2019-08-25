#!/bin/bash
#########################
#SCRIPT NAME: aws-tag-.sh
########################

echo "enter resource type, eg ec2 : "
read RTYPE
echo "enter the resourceid: "
read RESOURCEID
echo "enter the DEPARTMENT-NAME: "
read DEPARTMENTNAME
echo "enter the OWNER: "
read OWNER
echo "enter the PILOT-ACTIVITY: "
read PILOTACTIVITY
echo "enter the RESOURCE-TYPE: "
read RESOURCETYPE
echo "enter the ENVIRONMENT: "
read ENVIRONMENT
echo " "
echo "script with dry-run"
echo "aws $RTYPE create-tags --dry-run --resources $RESOURCEID --tags Key=DEPARTMENT-NAME,Value=$DEPARTMENTNAME Key=ENVIRONMENT,Value=$ENVIRONMENT Key=OWNER,Value=$OWNER Key=PILOT-ACTIVITY,Value=$PILOTACTIVITY Key=RESOURCETYPE,Value=$RESOURCETYPE"
echo " "
echo "tag script"
echo "aws $RTYPE create-tags --resources $RESOURCEID --tags Key=DEPARTMENT-NAME,Value=$DEPARTMENTNAME Key=ENVIRONMENT,Value=$ENVIRONMENT Key=OWNER,Value=$OWNER Key=PILOTACTIVITY,Value=$PILOTACTIVITY Key=RESOURCE-TYPE,Value=$RESOURCETYPE"
echo " "
