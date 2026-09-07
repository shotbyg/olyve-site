FROM nginx:1.27-alpine
# Only substitute ${PORT} in the template; leave nginx's own $uri etc. intact.
ENV NGINX_ENVSUBST_FILTER=PORT
ENV PORT=8080
COPY nginx/default.conf.template /etc/nginx/templates/default.conf.template
COPY public/ /usr/share/nginx/html/
EXPOSE 8080
