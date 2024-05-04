FROM arm64v8/debian:bookworm-slim

WORKDIR /app

RUN apt-get update
RUN apt-get install -y \
    openvpn \
    iptables                    

COPY entrypoint.sh ./

ENTRYPOINT [ "/app/entrypoint.sh" ]




