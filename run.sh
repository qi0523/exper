#!/bin/bash

while [ ! -d "/home/cloudlab-openwhisk/openwhisk-deploy-kube" ]
do
    sleep 60
done

pushd /home/cloudlab-openwhisk/openwhisk-deploy-kube
sed -i "s/docker.io/172.17.13.2/g" mycluster.yaml
helm install owdev ./helm/openwhisk -n openwhisk -f mycluster.yaml
popd /home/cloudlab-openwhisk/openwhisk-deploy-kube

printf "%s: %s\n" "$(date +"%T.%N")" "Waiting for OpenWhisk to complete deploying (this can take several minutes): "
DEPLOY_COMPLETE=$(kubectl get pods -n openwhisk | grep owdev-install-packages | grep Completed | wc -l)
while [ "$DEPLOY_COMPLETE" -ne 1 ]
do
    sleep 20
    DEPLOY_COMPLETE=$(kubectl get pods -n openwhisk | grep owdev-install-packages | grep Completed | wc -l)
done
printf "%s: %s\n" "$(date +"%T.%N")" "OpenWhisk deployed!"

python create_action.py 2

sleep 5

python invoke_action.py 2