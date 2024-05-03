FROM debian:latest

WORKDIR /build

RUN apt-get update
RUN apt-get install -y openvpn \
                       wget \
                       kmod \
                       apt-utils \
                       procps \
                       systemd \
                       net-tools \
                       less \
                       nano

RUN wget -O openvpn.sh https://get.vpnsetup.net/ovpn
RUN chmod +x openvpn.sh

COPY entrypoint.sh .

ENTRYPOINT [ "/build/entrypoint.sh" ]


                    
                    
