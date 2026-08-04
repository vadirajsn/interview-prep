# syntax=docker/dockerfile:1
FROM nginx:alpine

# Remove default nginx config
RUN rm /etc/nginx/conf.d/default.conf

# Copy site files into nginx's html directory
COPY index.html /usr/share/nginx/html/index.html
COPY dsa-animator.html /usr/share/nginx/html/dsa-animator.html
COPY system-design.html /usr/share/nginx/html/system-design.html

# Copy nginx config template
COPY nginx.conf /etc/nginx/nginx.conf.template

# Railway injects $PORT — use envsubst with ONLY $PORT so nginx's
# own variables ($uri, $host, etc.) are NOT substituted
CMD ["/bin/sh", "-c", "envsubst '${PORT}' < /etc/nginx/nginx.conf.template > /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'"]
