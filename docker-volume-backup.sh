# Matikan container
docker container stop mongovolume

# Buat container baru dengan dua mount
docker container create --name nginxbackup --mount "type=bind,source=D:/KULIAH/Belajar Docker/belajar-docker-dasar/backup,destination=/backup" --mount "type=volume,source=mongodata,destination=/data" nginx:latest

# path folder sistem host 
D:/KULIAH/Belajar Docker/belajar-docker-dasar/backup

# Masuk ke container
docker container exec -i -t nginxbackup /bin/bash

tar cvf {mau simpan dimana}: /backup/backup.tar.gz {folder yang akan dibackup} /data
tar cvf /backup/backup.tar.gz /data

# stop container backup
docker container stop nginxbackup

docker container rm nginxbackup

docker container start mongovolume

# Backup secara langsung

# Gunakan image ubuntu, karena nginx tidak bisa mati setelah dieksekusi
docker image pull ubuntu:latest

# Gunakan {run} bukan {create} dan tambahkan {--rm} untuk otomatis dihapus ketika selesai eksekusi
docker container stop mongovolume

docker container run --rm --name ubuntubackup --mount "type=bind,source=D:/KULIAH/Belajar Docker/belajar-docker-dasar/backup,destination=/backup" --mount "type=volume,source=mongodata,destination=/data" ubuntu:latest tar cvf /backup/backup-lagi.tar.gz /data

docker container start mongovolume
