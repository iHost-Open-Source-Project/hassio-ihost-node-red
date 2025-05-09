#!/bin/bash
version=$(cat ./version)

image_name=ghcr.io/ihost-open-source-project/hassio-ihost-node-red-armv7

docker build --no-cache --platform=linux/arm/v7 -t "$image_name":"$version" .;
docker push "$image_name":"$version";