# Configuration file & Notes

1. Shadowrocket

lazy_conf
```
https://raw.githubusercontent.com/fy-deng/config/main/Shadowrocket.conf
```

config
```
https://raw.githubusercontent.com/fy-deng/config/main/default.conf
```

GeoLite2-ASN.mmdb
```
https://git.io/GeoLite2-ASN.mmdb
```
```
https://github.com/P3TERX/GeoLite.mmdb/raw/download/GeoLite2-ASN.mmdb
```
```
https://github.com/P3TERX/GeoLite.mmdb/raw/download/GeoLite2-Country.mmdb
```

GeoLite2-Country.mmdb
```
https://git.io/GeoLite2-Country.mmdb
```
```
https://github.com/P3TERX/GeoLite.mmdb/raw/download/GeoLite2-City.mmdb
```

2. Download sshd_config

```
curl -Lo ~/ssh_upd.sh https://raw.githubusercontent.com/fy-deng/config/main/ssh_upd.sh && \
chmod +x ssh_upd.sh
./ssh_upd.sh
```

:. Debian (GCI)
```
sudo curl -Lo /etc/ssh/sshd_config https://raw.githubusercontent.com/fy-deng/config/main/ssh/gcp-sshd_config && \
sudo systemctl restart sshd
```

:. Ubuntu (OCI)
```
sudo curl -Lo /etc/ssh/sshd_config https://raw.githubusercontent.com/fy-deng/config/main/ssh/ocp-sshd_config && \
sudo systemctl restart sshd
```

3. Create a specific account + ACL

```
curl -Lo ~/acl.sh https://raw.githubusercontent.com/fy-deng/config/main/acl.sh && \
chmod +x acl.sh
./acl.sh
```

4. Create a specific account + Cert_ro

```
curl -Lo ~/isvc.sh https://raw.githubusercontent.com/fy-deng/config/main/isvc.sh && \
chmod +x isvc.sh
./isvc.sh
```

5. Install nginx from official source

```
curl -Lo ~/nginx.sh https://raw.githubusercontent.com/fy-deng/config/main/nginx.sh && \
chmod +x nginx.sh
./nginx.sh
```

6. Install Cloudflare warp-cli

```
curl -Lo ~/cfwarp.sh https://raw.githubusercontent.com/fy-deng/config/main/cfwarp.sh && \
chmod +x cfwarp.sh
./cfwarp.sh
```

7. Get wireguard configuration

```
curl -Lo ~/get_warp_conf.sh https://raw.githubusercontent.com/fy-deng/config/main/get_warp_conf.sh && \
chmod +x get_warp_conf.sh
./get_warp_conf.sh
```

8. Garbage cleanup

```
curl -Lo ~/clean.sh <https://raw.githubusercontent.com/fy-deng/config/main/clean.sh> && \
chmod +x clean.sh
./clean.sh
```