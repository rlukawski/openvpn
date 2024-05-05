#!/bin/bash

cat grafana.add.ini >>/etc/grafana/grafana.ini
/usr/sbin/grafana-server --homepath=/usr/share/grafana --config=/etc/grafana/grafana.ini
