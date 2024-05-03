#!/bin/bash

if [ ! -f /etc/openvpn/server/server.conf ]; then
    /app/openvpn.sh --auto
    cp /root/client.ovpn /etc/openvpn/client
fi

cd /etc/openvpn/server
openvpn --config /etc/openvpn/server/server.conf

