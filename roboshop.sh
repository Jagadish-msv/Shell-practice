#!/bin/bash

SG_ID="sg-003c934ec9e541c08"
AMI_ID="ami-0220d79f3f480ecf5"

for instance in $@ 
do
    Instance_ID=$(
                    aws ec2 run-instances \
                    --image-id $AMI_ID \
                    --instance-type t3.micro \
                    --security-group-ids $SG_ID \
                    --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=$instance}]" \
                    --query 'Insatnce[0].InstanceId' \
                    --output text 
                )

        if [ $instance == "frontend" ]; then
            ip=$(
                    aws ec2 describe-instances \
                    --instance-ids $Instance_ID \
                    --query 'Reservations[].Instances[].PublicIpAddress' \
                    --output text
                )
                echo "Public IP of front end server is $ip"
                dnf install nginx -y

        else
            ip=$(
                    aws ec2 describe-instances \
                    --instance-ids $Instance_ID \
                    --query 'Reservations[].Instances[].PrivateIpAddress' \
                    --output text
                )
                echo "Private address of the $instance is $ip"
        fi
done
