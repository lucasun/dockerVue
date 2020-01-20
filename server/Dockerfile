FROM node:13.6.0-alpine

# 拷贝项目文件进行构建
WORKDIR /app/server
COPY package.json ./
RUN npm install --production

#拷贝项目文件
COPY . .

# 启动服务
CMD ["npm","run","start"]

# 暴露 7001 端口到宿主机
EXPOSE 7001