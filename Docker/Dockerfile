
# Use Alpine base image
FROM alpine:latest

# Install Apache HTTP Server
RUN apk update && apk add --no-cache apache2

# Set environment variable
ENV project=dev

# Set working directory (Apache default in Alpine)
WORKDIR /var/www/localhost/htdocs/

# Copy your HTML file into the Apache web root
COPY index.html .

# Expose port 80
EXPOSE 80

# Start Apache in foreground
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]