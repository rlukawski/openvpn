#!/bin/bash

#iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE
cd /etc/openvpn/client
openvpn --config /etc/openvpn/client/client.conf