#!/bin/bash
nmcli con mod "Wired connection 1" ipv4.dns "8.8.8.8, 8.8.4.4"
nmcli con down "Wired connection 1" && nmcli con up "Wired connection 1"
cd /etc/openvpn/client
openvpn --config /etc/openvpn/client/client.conf
