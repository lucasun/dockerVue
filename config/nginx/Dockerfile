#使用nginx:alpine镜像
FROM nginx:stable-alpine
#复制ng配置，主要是设置反向代理
COPY nginx.conf /etc/nginx/
EXPOSE 80
#启动nginx
CMD ["nginx", "-g", "daemon off;"]