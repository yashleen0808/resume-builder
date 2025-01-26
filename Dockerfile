# Use the official Nginx image as the base image
FROM nginx:latest

# Set the working directory
WORKDIR /usr/share/nginx/html

# Remove the default Nginx configuration to avoid conflicts
RUN rm -rf ./*

# Copy your application files to the Nginx HTML directory
COPY . .

# Expose port 80 to access the application
EXPOSE 80

# Start the Nginx server
CMD ["nginx", "-g", "daemon off;"]
