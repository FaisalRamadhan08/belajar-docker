# Membuat network
docker network create --driver bridge mongonetwork

docker container create --name mongodb --network mongonetwork --env MONGO_INITDB_ROOT_USERNAME=faisal --env MONGO_INITDB_ROOT_PASSWORD=faisal mongo:latest

docker image pull mongo-express:latest

docker container create --name mongodbexpress --network mongonetwork --publish 8081:8081 --env ME_CONFIG_MONGODB_URL="mongodb://faisal:faisal@mongodb:27017/" mongo-express:latest

docker container start mongodb

docker container start mongodbexpress

# Disconnect
docker network disconnect mongonetwork mongodb

# Menambahkan container ke network
docker network connect mongonetwork mongodb