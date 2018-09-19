#!/bin/sh

rm -rf ./build
mkdir ./build
cp Dockerfile ./build

sed -i -e "s/<<AWS_CLI_VERSION>>/${AWS_CLI_VERSION}/" ./build/Dockerfile 

docker build -t gcoka/aws:latest ./build
docker tag gcoka/aws:latest gcoka/aws:${AWS_CLI_VERSION}
docker push gcoka/aws:latest
docker push gcoka/aws:${AWS_CLI_VERSION}
