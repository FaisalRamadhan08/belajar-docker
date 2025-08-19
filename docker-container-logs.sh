docker container create --name contohredis redis:latest

docker container start contohredis

# logs
docker container logs contohredis
# logs realtime
docker container logs -f contohredis