docker image pull mongo:latest

docker volume create mongodata

docker container create --name mongovolume --publish 27019:27017 --mount "type=volume,source=mongodata,destination=/data/db" --env MONGO_INITDB_ROOT_USERNAME=faisal --env MONGO_INITDB_ROOT_PASSWORD=faisal mongo:latest

# Menghapus container
docker container stop mongovolume

docker container rm mongovolume

docker container create --name mongorestore --publish 27020:27017 --mount "type=volume,source=mongorestore,destination=/data/db" --env MONGO_INITDB_ROOT_USERNAME=faisal --env MONGO_INITDB_ROOT_PASSWORD=faisal mongo:latest

docker container start mongorestore