docker image pull nginx:latest

# Port forwarding, di lokal 8080 di container 80
docker container create --name contohnginx --publish 8080:80 nginx:latest