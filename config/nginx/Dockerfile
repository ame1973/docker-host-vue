# build stage
FROM node:lts-alpine as build-stage

RUN apk update && apk upgrade && \
    apk add --no-cache bash git openssh

WORKDIR /var/www
# COPY src/package*.json ./
RUN npm ci
# COPY src/ ./
RUN npm run build

# production stage
FROM nginx:stable-alpine
# COPY --from=build-stage /app/dist /var/www/dist