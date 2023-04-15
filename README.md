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