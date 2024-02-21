# Utiliser l'image NGINX officielle
FROM nginx

# Copier le fichier index.html vers le répertoire par défaut de NGINX
COPY ./html/index.html /usr/share/nginx/html/index.html
