# Use an official PHP runtime as a parent image with Apache
FROM php:7.4-apache

# Set the working directory in the container
WORKDIR /var/www/html

# Copy the current directory contents into the container at /var/www/html
COPY . /var/www/html/

# Expose port 80 to allow communication to/from the server
EXPOSE 80

