#!/bin/sh

# build docker images for nginx and tomcat
docker build -t registry.dev.net/dev/nginx:v1 --file Dockerfile_nginx .

docker build -t registry.dev.net/dev/tomcat:v1 --file Dockerfile_tomcat .


# deploy nginx and tomcat pods
cd config/helm/nginx

helm lint
helm install

cd ../tomcat

helm lint
helm install
