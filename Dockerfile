# base image
FROM alpine:3.8

# metadata
MAINTAINER Youssef <ykaaouachi@umanis.com>

RUN apk add --update nginx && \
    rm -rf /var/cache/apk/* && \
    mkdir -p /tmp/nginx/client-body

# Copy nginx configuration
COPY nginx/nginx.conf /etc/nginx/nginx.conf
COPY nginx/default.conf /etc/nginx/conf.d/default.conf

# Copy source code 2048
COPY 2048 /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Run nginx on startup
CMD ["nginx", "-g", "daemon off;"]
