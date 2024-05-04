FROM arm64v8/debian:bookworm-slim

WORKDIR /app

RUN apt-get update
RUN apt-get install -y \
    openvpn \
    iptables 

RUN apt-get install -y \
    iputils-ping \
    nano \
    net-tools \
    procps \
    telnet                        

COPY entrypoint.sh ./

ENTRYPOINT [ "/app/entrypoint.sh" ]




