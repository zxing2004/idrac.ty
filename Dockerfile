FROM nginx:1.16.1

RUN mkdir -p /etc/nginx/ssl/ && \
    apt update && \
    apt install -y net-tools vim lsof curl telnet
# COPY nginx.conf /etc/nginx/nginx.conf
COPY conf.d/ /etc/nginx/conf.d/
COPY ssl/ /etc/nginx/ssl/
EXPOSE 80 443