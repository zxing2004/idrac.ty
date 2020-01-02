FROM nginx:1.16.1

# COPY nginx.conf /etc/nginx/nginx.conf
COPY conf.d/ /etc/nginx/
EXPOSE 80