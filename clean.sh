#!/bin/bash

# 定义颜色
green='\e[32m'
red='\e[31m'
yellow='\e[93m'
end='\e[0m'

# 检查是否以root身份运行
if [ "$(id -u)" != "0" ]; then
  echo -e "${red}错误：必须以root身份运行此脚本！${end}"
  exit 1
fi

# 清理APT缓存
echo -e "${green}清理APT缓存...${end}"
apt-get clean
echo -e "${green}完成！${end}"

# 清理旧的日志文件
echo -e "${green}清理旧的日志文件...${end}"
find /var/log -type f -name "*.log" -exec truncate -s 0 {} \;
echo -e "${green}完成！${end}"

# 删除不需要的软件包
echo -e "${green}删除不需要的软件包...${end}"
apt-get autoremove -y
echo -e "${green}完成！${end}"

# 清理系统缓存
echo -e "${green}清理系统缓存...${end}"
sync && echo 3 > /proc/sys/vm/drop_caches
echo -e "${green}完成！${end}"

# 清理临时文件
echo -e "${green}清理临时文件...${end}"
rm -rf /tmp/*
rm -rf /var/tmp/*
echo -e "${green}完成！${end}"

# 清理历史命令记录
echo -e "${green}清理历史命令记录...${end}"
unset HISTFILE
rm -f /root/.bash_history
rm -f /home/*/.bash_history
echo -e "${green}完成！${end}"

echo -e "${yellow}清理完成！${end}"