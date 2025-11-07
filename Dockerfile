# Use official Nginx image
FROM nginx:alpine

# Copy website files to Nginx HTML directory
COPY website /usr/share/nginx/html

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
