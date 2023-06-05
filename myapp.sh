#! /bin/bash

echo "Deploying the app with all the components"
kubectl apply -f myapp.yaml

echo "###########################################################"
sleep 60

kubectl get all -n sre-techtask
kubectl get ingress -n sre-techtask
echo "###########################################################"
echo " Checking the application url myapp.com:"

docker exec -it $(docker ps|grep minikube|cut -f1 -d " ") curl -k myapp.com

echo "###########################################################"
