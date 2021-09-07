# build stage
FROM node:lts-alpine

# Install system dependencies
RUN apk update && apk upgrade && \
    apk add --no-cache bash git openssh

# Set working directory
WORKDIR /var/www

# Copy existing application directory contents
RUN groupadd -g 1000 www
RUN useradd -u 1000 -ms /bin/bash -g www www

# Set working directory
WORKDIR /var/www

# Copy existing application directory contents
COPY . /var/www

# Copy existing application directory permissions
COPY --chown=www:www . /var/www

# npm install and build vue dist
RUN npm ci
RUN npm run build