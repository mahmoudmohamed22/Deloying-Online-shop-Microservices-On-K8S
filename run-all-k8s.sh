#!/usr/bin/bash
kubectl apply -f online-microservices-namespace.yaml

for file in *
do
if [ $file != "run-all-k8s.sh" -a $file != "online-microservices-namespace.yaml" ]
then
  kubectl apply -f "$file"
fi
done


