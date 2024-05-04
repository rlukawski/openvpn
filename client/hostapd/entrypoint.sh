#!/bin/bash
CONF=/etc/hostapd/hostapd.conf
envsubst <$CONF.tpl >$CONF
hostapd -d /etc/hostapd/hostapd.conf
