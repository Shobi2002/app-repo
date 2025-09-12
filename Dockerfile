#use Nginx image
FROM nginx:alpine

#Remove default HTM Content
RUN rm -rf /usr/share/nginx/html/*

# Copy your static file into nginx
COPY . /usr/share/nginx/html

#Expose Port 80
EXPOSE 80
