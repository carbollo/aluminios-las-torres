FROM nginx:alpine

# Railway inyecta PORT en runtime; valor por defecto para local.
ENV PORT=8080

# Servir solo el sitio estatico.
COPY index.html /usr/share/nginx/html/index.html

# Nginx oficial hace envsubst de templates en /etc/nginx/templates.
COPY nginx/default.conf.template /etc/nginx/templates/default.conf.template

EXPOSE 8080