#! /bin/sh
git pull --rebase origin master
yarn install
yarn build
rm -rf webapp.tar
tar -cvf webapp.tar dist Dockerfile config