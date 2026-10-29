# 1. Utilizar la imagen base oficial de Nginx
FROM nginx:latest

# 2. Copiar el contenido de la carpeta web local a la carpeta de Nginx en el contenedor
COPY ./web /usr/share/nginx/html

# 3. Exponer el puerto 80 (documentativo)
EXPOSE 80

# 4. Comando de inicio de Nginx (se ejecuta en primer plano)
CMD ["nginx", "-g", "daemon off;"]
