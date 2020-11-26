#!/bin/sh
docker build -t rflfrubix/multi-client -f ./client/Dockerfile ./client
docker build -t rflfrubix/multi-server -f ./server/Dockerfile ./server
docker build -t rflfrubix/multi-worker -f ./worker/Dockerfile ./worker

docker push rflfrubix/multi-client
docker push rflfrubix/multi-server
docker push rflfrubix/multi-worker

kubectl apply -f k8s

