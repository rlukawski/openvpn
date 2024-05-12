country_code=PL
interface=wlan0
driver=nl80211
ssid={{wifi_name}}


# wifi performance
ieee80211n=1 
ieee80211ac=1
require_ht=1
hw_mode=a
channel=0
ht_capab=[HT40+][SHORT-GI-20][SHORT-GI-40]
wmm_enabled=1

macaddr_acl=0
auth_algs=1
ignore_broadcast_ssid=0

#security
wpa=2
wpa_passphrase={{wifi_password}}
wpa_key_mgmt=WPA-PSK
wpa_pairwise=TKIP
rsn_pairwise=CCMP
