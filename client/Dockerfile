FROM arm64v8/debian:bookworm

WORKDIR /app

RUN apt-get update
RUN apt-get install -y openvpn \
                        procps \
                        iptables \
                        net-tools 

# #RUN wget -O openvpn.sh https://get.vpnsetup.net/ovpn
# #RUN chmod +x openvpn.sh

COPY entrypoint.sh ./

ENTRYPOINT [ "/app/entrypoint.sh" ]


                    
                    
