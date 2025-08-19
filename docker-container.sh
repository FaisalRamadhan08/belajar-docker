# Melihat semua Container
docker container ls -a

#  Membuat docker container
docker container create --name contohredis redis:latest

# Menjalankan container
docker container start contohredis

# Menghentikan container
docker container stop contohredis

# Menghapus Container
docker container rm contohredis