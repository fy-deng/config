# configuration file & notes

1. Shadowrocket配置下载

```
https://raw.githubusercontent.com/fy-deng/config/main/default.conf
```

2. 下载sshd_config

:. Debian (GCI)

```
sudo rm /etc/ssh/sshd_config && curl -Lo /etc/ssh/sshd_config https://raw.githubusercontent.com/fy-deng/config/main/ssh/gcp-sshd_config && systemctl restart sshd
```

:. Ubuntu (OCI)

```
sudo rm /etc/ssh/sshd_config && curl -Lo /etc/ssh/sshd_config https://raw.githubusercontent.com/fy-deng/config/main/ssh/ocp-sshd_config && systemctl restart sshd
```

3. 创建特定账号+ACL

```
curl -Lo ~/isvc.sh https://raw.githubusercontent.com/fy-deng/config/main/acl.sh && \
chmod +x acl.sh
./acl.sh
```

4. 创建特定账号+Cert_ro

```
curl -Lo ~/isvc.sh https://raw.githubusercontent.com/fy-deng/config/main/isvc.sh && \
chmod +x isvc.sh
./isvc.sh
```
