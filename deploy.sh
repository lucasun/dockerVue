#! /bin/sh
image_version=`date +%Y%m%d%H%M`;
echo $image_version;
git pull --rebase origin master;
docker stop dockerVue;
docker rm dockerVue;
docker build -t dockervue:$image_version .;
docker images;
docker run -p 9999:80 -d --name dockerVue dockervue:$image_version;
# -v ~/docker-data/house-web/appsettings.json:/app/appsettings.json -v ~/docker-data/house-web/NLogFile/:/app/NLogFile   --restart=always
docker logs dockervue;
#删除build过程中产生的镜像    
#docker image prune -a -f
#docker login -u $username -p $password
#docker tag dockervue:$image_version lucasun/dockervue:$image_version
#docker push lucasun/dockervue:$image_version
docker rmi $(docker images -f "dangling=true" -q)
# jenkins构建脚本
# #! /bin/sh
# cd /root/webapp
# tar -xvf webapp.tar
# image_version=`date +%Y%m%d%H%M`;
# echo $image_version;
# docker stop dockerVue;
# docker rm dockerVue;
# docker build -t dockervue:$image_version .;
# docker images;
# docker run -p 80:80 -d --name dockerVue dockervue:$image_version;
# docker image prune -a -f