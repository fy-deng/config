#!/bin/bash

# 判断系统类型
if grep -q -i "debian" /etc/issue; then
    SYSTEM="debian"
    apt-get update
    apt-get install -y curl gnupg2 ca-certificates lsb-release
    wget http://nginx.org/keys/nginx_signing.key
    apt-key add nginx_signing.key
    echo "deb http://nginx.org/packages/$SYSTEM/ $(lsb_release -cs) nginx" | tee /etc/apt/sources.list.d/nginx.list
    echo "deb-src http://nginx.org/packages/$SYSTEM/ $(lsb_release -cs) nginx" | tee -a /etc/apt/sources.list.d/nginx.list
    apt-get update
    apt-get install -y nginx
elif grep -q -i "ubuntu" /etc/issue; then
    SYSTEM="ubuntu"
    apt-get update
    apt-get install -y curl gnupg2 ca-certificates lsb-release
    wget http://nginx.org/keys/nginx_signing.key
    apt-key add nginx_signing.key
    echo "deb http://nginx.org/packages/$SYSTEM/ $(lsb_release -cs) nginx" | tee /etc/apt/sources.list.d/nginx.list
    echo "deb-src http://nginx.org/packages/$SYSTEM/ $(lsb_release -cs) nginx" | tee -a /etc/apt/sources.list.d/nginx.list
    apt-get update
    apt-get install -y nginx
elif grep -q -i "centos" /etc/issue; then
    SYSTEM="centos"
    yum update -y
    yum install -y epel-release yum-utils
    yum groupinstall -y "Development Tools"
    yum install -y pcre-devel zlib-devel openssl-devel curl
    yum-config-manager --add-repo http://nginx.org/packages/centos/$(rpm -E '%{rhel}').$(uname -m | sed 's/x86_64/64/g')
    yum install -y nginx
else
    echo "不支持的系统类型"
    exit 1
fi

# 启动Nginx
systemctl start nginx
