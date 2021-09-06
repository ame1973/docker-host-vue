FROM nginx:stable-alpine

# Set working directory
WORKDIR /var/www

# Copy existing application directory contents
COPY . /var/www

# install project dependencies leaving out dev dependencies
RUN npm install --production

# build app for production with minification
RUN npm run build