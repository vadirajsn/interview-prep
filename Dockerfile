# syntax=docker/dockerfile:1
FROM nginx:alpine

# Copy site files into nginx's html directory
COPY index.html /usr/share/nginx/html/index.html
COPY dsa-interview-animator.html /usr/share/nginx/html/dsa-interview-animator.html

# Copy our custom nginx config template
COPY nginx.conf /etc/nginx/templates/default.conf.template

# Railway injects $PORT at runtime — nginx-alpine automatically
# processes templates in /etc/nginx/templates/ via envsubst
EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]
