FROM node:lts-alpine as build-stage
WORKDIR /app
COPY . .

# production stage
FROM nginx:stable-alpine as production-stage
COPY config/nginx/nginx.conf /etc/nginx/nginx.conf
COPY --from=build-stage /app/dist /usr/share/nginx/html

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
