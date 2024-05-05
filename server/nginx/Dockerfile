FROM debian:bookworm

WORKDIR /app
SHELL ["/bin/bash", "--login", "-c"]

RUN apt-get update
RUN apt-get install -y nginx \
                       sudo \
                       cron
            
RUN apt-get install -y python3 python3-venv

COPY nginx.conf /etc/nginx/sites-available/
RUN ln -s /etc/nginx/sites-available/nginx.conf /etc/nginx/sites-enabled/

RUN python3 -m venv .
RUN . ./bin/activate && pip install --upgrade pip && pip install certbot certbot-nginx
RUN sudo ln -s /app/bin/certbot /usr/bin/certbot

COPY cron/renew-certificate.cron /etc/cron.d/renew-certificate.cron
RUN chmod 0644 /etc/cron.d/renew-certificate.cron
RUN crontab /etc/cron.d/renew-certificate.cron

# entrypoint
COPY entrypoint.sh renew-certificate.sh /app/
RUN chmod 755 /app/entrypoint.sh

CMD ["/app/entrypoint.sh"]