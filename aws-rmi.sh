#!/bin/bash

master_ip=$(ifconfig | grep 172.32 | awk '{print $2}')
token=
ips=$(cat /home/ubuntu/ips.txt)
invoker_ips=($ips)

for INVOKER_IP in ${invoker_ips[@]}; do
   ssh -o StrictHostKeyChecking=no ubuntu@$INVOKER_IP "cd install && bash rmi.sh &" &
done

sleep 3

for INVOKER_IP in ${invoker_ips[@]}; do
   ssh -o StrictHostKeyChecking=no ubuntu@$INVOKER_IP "cd install && bash p2p.sh $master_ip $token &" &
done