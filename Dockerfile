# Use a base image, for example, nginx which is a lightweight web server
FROM nginx:latest

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Copy the local files into the container's working directory
COPY app/ .

# Expose port 80 to the outside world
EXPOSE 80

# Start the nginx server when the container launches
CMD ["nginx", "-g", "daemon off;"]