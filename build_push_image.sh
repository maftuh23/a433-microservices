# Melakukan build docker images dari file Dokcerfile
docker build -t item-app:v1 .

# Cek docker images yang sudah dibuild
docker images

# Push docker images ke docker hub
docker tag item-app:v1 maftuh23/item-app:v1
echo $PASSWORD_DOCKER_HUB | docker login -u maftuh23 --password-stdin
docker push maftuh23/item-app:v1