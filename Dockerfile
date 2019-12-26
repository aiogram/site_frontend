FROM node:lts-alpine as stage-build-frontend

WORKDIR /usr/src/app
COPY . .
RUN yarn install \
  && yarn build \
  && rm -rf node_modules

FROM nginx:alpine as stage-production
WORKDIR /usr/share/nginx/html
COPY --from=stage-build-frontend /usr/src/app/dist .
COPY config.nginx /etc/nginx/conf.d/default.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
