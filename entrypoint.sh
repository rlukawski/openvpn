#!/bin/bash

if [ ! -f /etc/openvpn/server/server.conf ]; then
    /build/openvpn.sh --auto
fi

cd /etc/openvpn/server
openvpn --config /etc/openvpn/server/server.conf

