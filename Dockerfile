FROM debian:bookworm-slim

WORKDIR /app

RUN apt-get update
RUN apt-get install -y openvpn \
                       kmod \
                       apt-utils \
                       procps \
                       systemd \
                       net-tools \
                       iptables \
                       sed

#RUN wget -O openvpn.sh https://get.vpnsetup.net/ovpn
#RUN chmod +x openvpn.sh

COPY entrypoint.sh openvpn.sh ./

ENTRYPOINT [ "/app/entrypoint.sh" ]


                    
                    
