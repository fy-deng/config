#!/bin/bash

# 判断系统类型
if grep -q -i "debian" /etc/issue; then
    echo "Download sshd_config now."
    sudo curl -Lo /etc/ssh/sshd_config https://raw.githubusercontent.com/fy-deng/config/main/ssh/gcp-sshd_config && \
	sudo systemctl restart sshd
elif grep -q -i "ubuntu" /etc/issue; then
    echo "Download sshd_config now."
	sudo curl -Lo /etc/ssh/sshd_config https://raw.githubusercontent.com/fy-deng/config/main/ssh/ocp-sshd_config && \
	sudo systemctl restart sshd
else
    echo "不支持的系统类型"
    exit 1
fi
