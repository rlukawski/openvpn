FROM arm64v8/debian:bookworm-slim

WORKDIR /app

RUN apt-get update
RUN apt-get install -y hostapd

COPY hostapd.conf.tpl /etc/hostapd
COPY entrypoint.sh ./

ENTRYPOINT [ "/app/entrypoint.sh" ]