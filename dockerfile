# image base for the container
FROM nginx:alpine

# Copy the files into nginx directories 
COPY ./*.html /usr/share/nginx/html/
COPY ./*.css /usr/share/nginx/html/
COPY ./script.js /usr/share/nginx/html
COPY ./img/ /usr/share/nginx/html/img/

# Expose standard nginx port
EXPOSE 80

# Command to start the nginx server
CMD ["nginx", "-g", "daemon off;"]
