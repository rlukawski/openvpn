FROM arm64v8/debian:bookworm-slim

WORKDIR /app

RUN apt-get update
RUN apt-get install -y openvpn \
                        procps \
                        iptables \
                        net-tools \
                        iputils-ping \
                        nano \
                        telnet
COPY entrypoint.sh ./

ENTRYPOINT [ "/app/entrypoint.sh" ]


                    
                    
