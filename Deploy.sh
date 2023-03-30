#!/usr/bin/bash

cd Namespace

for file in *
do

  kubectl apply -f "$file"
# echo "$file"

done

cd ../ConfigMap

for file in *
do

  kubectl apply -f "$file"
# echo "$file"

done



cd ../Services

for file in *
do

  kubectl apply -f "$file"
 #echo "$file"

done

cd ../Deployment

for file in *
do

kubectl apply -f "$file"
 #echo "$file"

done


