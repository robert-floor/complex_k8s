
docker build -t rflf/multi-client -f ./client/Dockerfile ./client
docker build -t rflf/multi-server -f ./server/Dockerfile ./server
docker build -t rflf/multi-worker -f ./worker/Dockerfile ./worker



kubectl apply -f k8s

kubectl rollout restart RESOURCE