# build stage
FROM node:lts-alpine as build-stage

# Install system dependencies
RUN apk update && apk upgrade && \
    apk add --no-cache bash git openssh

# Clear cache
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /var/www

# Copy existing application directory contents
COPY src/ ./

# npm install and build vue dist
RUN npm ci
RUN npm run build