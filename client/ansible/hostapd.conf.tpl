country_code=PL
interface=wlan0
driver=nl80211
ssid={{wifi_name}}
ieee80211n=1 
ieee80211ac=1
require_ht=1

channel=7
wmm_enabled=0
macaddr_acl=0
auth_algs=1
ignore_broadcast_ssid=0

#security
wpa=2
wpa_passphrase={{wifi_password}}
wpa_key_mgmt=WPA-PSK
wpa_pairwise=TKIP
rsn_pairwise=CCMP
