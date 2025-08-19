# Buat volume baru untuk lokasi backup
docker volume create mongorestore

docker container run --rm --name ubunturestore --mount "type=bind,source=D:/KULIAH/Belajar Docker/belajar-docker-dasar/backup,destination=/backup" --mount "type=volume,source=mongorestore,destination=/data" ubuntu:latest bash -c "cd /data && tar xvf /backup/backup.tar.gz --strip 1"