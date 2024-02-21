FROM nginx:alpine

COPY ./*.html /usr/share/nginx/html/
COPY ./*.css /usr/share/nginx/html/
COPY ./script.js /usr/share/nginx/html
COPY ./img/ /usr/share/nginx/html/imagens/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
