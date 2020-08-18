#!/bin/bash
image=libao_ui
echo 'delete old container'
docker rm -f $image
echo '删除旧镜像'
docker rmi -f $image
echo '构建新镜像'
docker build -t $image .
docker run -d -p 18191:80 --name $image $image