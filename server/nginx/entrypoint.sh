#!/bin/bash

if [ ! -d /etc/letsencrypt/live ]; then
    /app/bin/certbot -n --standalone  certonly --agree-tos --email rs.lukawski@gmail.com --domains grafana.generator-paskow.pl
fi
exec nginx -g 'daemon off;'

