# FROM node:alpine

# # Set the working directory to /app
# # WORKDIR /app

# # # Copy the HTML file into the container
# # COPY index.html .
# # COPY styles.css .
# # Copy Pages .

# # # Copy your HTML files and CSS file into the image
# # COPY index.html styles.css /usr/local/apache2/htdocs/

# # Copy the Pages folder into the image
# COPY . . /usr/local/apache2/htdocs/Pages

# # Install the http-server package
# RUN npm install -g http-server

# # Expose port 8080 so that the container can be accessed
# EXPOSE 8080

# # Start the http-server when the container starts
# CMD ["http-server", "-p", "8080"]

# Use a lightweight image of an HTTP server
FROM httpd:2.4-alpine

# Copy your HTML files and CSS file into the image
COPY index.html styles.css /usr/local/apache2/htdocs/

# Copy the Pages folder into the image
COPY Pages /usr/local/apache2/htdocs/Pages/

# Expose port 80 to make the server accessible
EXPOSE 80

# Start the Apache server on container launch
CMD ["httpd-foreground"]
