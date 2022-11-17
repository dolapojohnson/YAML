#!/bin/bash

#dolapojohnson99@gmail.com

gcloud container clusters create \
     --num-nodes 1 \
     --region us-central1-a \
     standard-cluster-1

gcloud container clusters describe standard-cluster-1

gcloud container clusters resize standard-clusters-1 node-pool default-pool \
     --num-nodes 4


#create pod yaml and deploy

git clone https://github.com/dolapojohnson/YAML.git \
     kubectl apply -f gke.yaml 

kubectl describe deployment nginx-deployment

kublectl get pods -1 app=nginx

kubect describe pod nginx