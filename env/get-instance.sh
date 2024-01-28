#!/bin/bash

count=0
while true; do
  ((count++))
  echo "try $count"
  terraform apply -auto-approve
  if [ $? -ne 1 ]; then
    echo "Resource Created!" >> result.txt
    exit
  fi
  sleep 10
done