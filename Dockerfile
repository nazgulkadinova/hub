# Use the official Nginx base image
FROM nginx:1.25.4

# Remove the default Nginx configuration file
# RUN rm /etc/nginx/conf.d/default.conf

# Copy the custom Nginx configuration file
COPY nginx.conf /etc/nginx/conf.d/

# Copy the static HTML file to the web server's root directory
# COPY index.html /usr/share/nginx/html/

# Expose port 80 to allow incoming connections
EXPOSE 80

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]