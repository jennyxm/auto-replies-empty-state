FROM nginx:1.27-alpine

# Cloud Run routes traffic to $PORT (8080 by default)
RUN sed -i 's/listen\s*80;/listen 8080;/; s/listen\s*\[::\]:80;/listen [::]:8080;/' /etc/nginx/conf.d/default.conf

COPY index.html /usr/share/nginx/html/
COPY fonts /usr/share/nginx/html/fonts
COPY images /usr/share/nginx/html/images

EXPOSE 8080
