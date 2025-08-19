docker image pull mongo:latest

docker container create --name mongodata --publish 27018:27017 --mount "type=bind,source=D:/KULIAH/Belajar Docker/belajar-docker-dasar/mongo-data,destination=/data/db" --env MONGO_INITDB_ROOT_USERNAME=faisal --env MONGO_INITDB_ROOT_PASSWORD=faisal mongo:latest