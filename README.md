# sre-techtask

********* Tested on minikube with docker driver*****************

clone the repo
provide executable permission to the myapp.sh script.

< chmod a+x myapp.sh >

Run **sh myapp.sh** to deploy all the components required for app like deployemnt, service and ingress.

The script uses myapp.yaml to deploy all the resources on the minikube cluster.
Once the resources are deployed script shows the status for deployed resources.

at last the script curl myapp.com url to show the output on the terminal.

#########################################################
