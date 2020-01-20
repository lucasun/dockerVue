FROM node:13.6.0-alpine

# 拷贝项目文件进行构建
WORKDIR /app/server
COPY ./server/package.json ./
RUN yarn install --production

#拷贝项目文件
COPY ./server/* ./

# 启动服务
CMD ["npm","run","start"]

# 暴露 7001 端口到宿主机
EXPOSE 7001