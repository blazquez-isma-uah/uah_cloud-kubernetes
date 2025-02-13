#!/bin/bash
for i in {1..150}; do
    curl -s -o /dev/null -w "Request $i -> %{http_code}\n" http://localhost/cpeliculas/listado &
done
wait