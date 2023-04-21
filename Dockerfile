# Imagem base
FROM nginx:alpine

# Copia os arquivos do site para dentro do container
COPY . /usr/share/nginx/html

# Expõe a porta 80 do container
EXPOSE 80

# Comando para iniciar o servidor web do nginx
CMD ["nginx", "-g", "daemon off;"]
