#! /bin/sh
git pull --rebase origin master
yarn install
yarn build
rm -rf webapp.tar
rm -rf server/app/public/*
cp -r dist/* server/app/public
tar -cvf webapp.tar server docker-compose.yml config