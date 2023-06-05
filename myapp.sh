#! /bin/bash

echo "Deploying the app with all the components"
kubectl apply -f myapp.yaml

echo "###########################################################"
sleep 60

kubectl get all -n sre-techtask
kubectl get ingress -n sre-techtask
echo "###########################################################"
echo " Checking the application url myapp.com:"

docker exec -it b6b209ad7576 curl -k myapp.com

echo "###########################################################"
