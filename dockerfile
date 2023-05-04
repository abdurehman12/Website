# # Use a base image with the desired version of nginx
# FROM nginx:latest

# # Set the working directory to /usr/share/nginx/html
# WORKDIR /usr/share/nginx/html

# # Copy the HTML files into the container
# COPY index.html .

# COPY styles.css .

# # Expose port 80 so that the container can be accessed
# EXPOSE 80

# Use a Node.js image as the base image
FROM node:alpine

# Set the working directory to /app
WORKDIR /app

# Copy the HTML file into the container
COPY index.html .
COPY styles.css .

# Install the http-server package
RUN npm install -g http-server

# Expose port 8080 so that the container can be accessed
EXPOSE 8080

# Start the http-server when the container starts
CMD ["http-server", "-p", "8080"]
