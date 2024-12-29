# Use the official Nginx base image
FROM nginx:latest

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Copy custom HTML files into the container
COPY index.html /usr/share/nginx/html/
COPY custom.conf /etc/nginx/conf.d/

# Expose the default Nginx port
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
