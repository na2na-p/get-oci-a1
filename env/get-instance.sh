#!/usr/bin/env bash

count=0
while true; do
  ((count++))
  echo "try $count"

  # Terraform applyを実行し、出力を表示
  output=$(terraform apply -auto-approve 2>&1)
  echo "$output"

  if [[ $output == *"500-InternalError, Out of host capacity."* ]]; then
    echo "Encountered 'Out of host capacity' error, not logging this error."
  elif [[ $output == *"Error:"* ]] || [[ $output == *"error:"* ]]; then
    clean_output=$(echo "$output" | sed 's/\x1b\[[0-9;]*m//g')
    echo "Error on try $count: $clean_output" >> result.txt
  elif [ $exit_code -eq 0 ]; then
    echo "Resource Created!" >> result.txt
    exit
  fi

  sleep 10
done
