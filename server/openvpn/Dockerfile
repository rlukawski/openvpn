FROM debian:bookworm-slim

WORKDIR /app

RUN apt-get update
RUN apt-get install -y openvpn \
                       kmod \
                       apt-utils \
                       procps \
                       systemd \
                       net-tools \
                       iptables 

COPY entrypoint.sh openvpn.sh ./

ENTRYPOINT [ "/app/entrypoint.sh" ]


                    
                    
