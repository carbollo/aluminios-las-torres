FROM nginx:alpine

# Copiar los archivos de la web al directorio que Nginx usa para servir contenido estático
COPY . /usr/share/nginx/html

# Exponer el puerto 80
EXPOSE 80

# Iniciar Nginx
CMD ["nginx", "-g", "daemon off;"]