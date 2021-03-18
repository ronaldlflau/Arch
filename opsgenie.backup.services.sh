#!/bin/bash -x

var=`date`
OUTPUT=""
KEY="Authorization: GenieKey da8b7933-6550-46a0-a36e-08b2dc3b2649"

#ALLIDS=`curl -s -X GET "https://api.opsgenie.com/v2/integrations" --header "$KEY" --header "Content-Type: application/json"  | jq -r .data[].id `



#Next loop will download each Integrations configuration for AMIS, AMI and AIGI
#for ID in $ALLIDS
#do

#curl -s -X GET "https://api.opsgenie.com/v2/integrations/$ID/actions" --header "$KEY" --header "Content-Type: application/json"

#done 

#cat $OUTPUT
#cat $OUTPUT | jq . | mailx -S "OpsGenie@archinsurance.com" -s "OpsGenie Backup on $var" -S smtp=smtp://smtp.corp.archcapservices.com rlau@archinsurance.com

#curl -s -X GET "https://api.opsgenie.com/v1/services" --header "$KEY" --header "Content-Type: application/json"  > allservices
 curl -s -X GET "https://api.opsgenie.com/v1/services?offset=0&limit=100" --header "$KEY" --header "Content-Type: application/json"  > allservices
 curl -s -X GET "https://api.opsgenie.com/v1/services?offset=101&limit=100" --header "$KEY" --header "Content-Type: application/json"  >> allservices
 curl -s -X GET "https://api.opsgenie.com/v1/services?offset=201&limit=100" --header "$KEY" --header "Content-Type: application/json"  >> allservices
 curl -s -X GET "https://api.opsgenie.com/v1/services?offset=301&limit=100" --header "$KEY" --header "Content-Type: application/json"  >> allservices
