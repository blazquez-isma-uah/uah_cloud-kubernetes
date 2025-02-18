#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <num_requests_v1> <num_requests_v2>"
    exit 1
fi

num_requests_v1=$1
num_requests_v2=$2

for i in $(seq 1 $num_requests_v1); do
    curl -s -o /dev/null -w "Request v1 - $i -> %{http_code}\n" -H "X-Version: v1" -X GET http://localhost/cusuarios/generarPassword &
done

for i in $(seq 1 $num_requests_v2); do
    curl -s -o /dev/null -w "Request v2 - $i -> %{http_code}\n" -H "X-Version: v2" -X GET http://localhost/cusuarios/generarPassword &
done

wait