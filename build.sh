#! /bin/sh
git pull --rebase origin master
yarn install --registry=https://registry.npm.taobao.org
yarn build
rm -rf server/node_modules
rm -rf webapp.tar
rm -rf server/app/public/*
cp -r dist/* server/app/public
tar -cvf webapp.tar server docker-compose.yml config
echo '构建完成'