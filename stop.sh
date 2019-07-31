#!/bin/bash

set -e -x

containers="www mail ftp example backbone isp modemA modemB h1 h2 h3 h4"

echo "stop containers: $containers, it takes while please wait..."
docker stop $containers

echo "rm containers: $containers"
docker rm $containers

echo "delete bridge devices"
for br in homeA homeB exampleCOM
do
    sudo ip link delete $br
done
