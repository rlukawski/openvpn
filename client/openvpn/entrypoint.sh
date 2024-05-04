#!/bin/bash

#iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE
echo "nameserver 8.8.8.8" >/etc/resolv.conf
cd /etc/openvpn/client
openvpn --config /etc/openvpn/client/client.conf