#!/bin/bash

# 导入cloudflare存储库的gpg密钥
curl https://pkg.cloudflareclient.com/pubkey.gpg | sudo gpg --yes --dearmor --output /usr/share/keyrings/cloudflare-warp-archive-keyring.gpg

# 添加cloudflare存储库
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/cloudflare-warp-archive-keyring.gpg] https://pkg.cloudflareclient.com/ $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/cloudflare-client.list

# 安装warp客户端
sudo apt update
sudo apt -y install cloudflare-warp

# 检查客户端是否正常运行
sudo systemctl status warp-svc

# 注册warp，只有注册了之后才能使用
sudo warp-cli register

# 把模式改为代理
sudo warp-cli set-mode proxy

# 检查warp的配置，查看当前的代理模式
sudo warp-cli settings

#查看连接是否成功：
sudo warp-cli warp-stats

# 建议开启永久连接功能
sudo warp-cli enable-always-on

# 测试socks代理，检查ip是否改变
export ALL_PROXY=socks5://127.0.0.1:40000
curl ip.sb