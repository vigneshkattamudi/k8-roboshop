#!/bin/bash
set -e

kubectl apply -f 01-namespace.yaml

kubectl apply -f mongodb
kubectl apply -f mysql
kubectl apply -f redis
kubectl apply -f rabbitmq

kubectl apply -f catalogue
kubectl apply -f user
kubectl apply -f cart
kubectl apply -f shipping
kubectl apply -f payment
kubectl apply -f frontend

kubectl apply -f debug