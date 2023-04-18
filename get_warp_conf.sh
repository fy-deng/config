#!/bin/bash

# 检查系统架构
ARCH=$(uname -m)

# 根据架构执行命令
if [[ "$ARCH" == "x86_64" || "$ARCH" == "amd64" ]]; then
  echo "Detected AMD64 architecture. Get wireguard configuration now."
  mkdir warp && curl -sLo ./warp/warp https://gitlab.com/ProjectWARP/warp-go/-/releases/v1.0.8/downloads/warp-go_1.0.8_linux_amd64.tar.gz && tar -xzf ./warp/warp -C ./warp && cp ./warp/warp-go . && chmod 0755 warp-go && rm -r warp && ./warp-go --register && ./warp-go -export-singbox wireguard.json
  
elif [[ "$ARCH" == "aarch64" || "$ARCH" == "arm64" ]]; then
  echo "Detected ARM64 architecture. Get wireguard configuration now."
  mkdir warp && curl -sLo ./warp/warp https://gitlab.com/ProjectWARP/warp-go/-/releases/v1.0.8/downloads/warp-go_1.0.8_linux_arm64.tar.gz && tar -xzf ./warp/warp -C ./warp && cp ./warp/warp-go . && chmod 0755 warp-go && rm -r warp && ./warp-go --register && ./warp-go -export-singbox wireguard.json
else
  echo "Unsupported architecture: $ARCH"
  exit 1
fi