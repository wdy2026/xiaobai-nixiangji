#!/bin/sh
# 小白逆袭计 · 首次推送到 GitHub
# 使用方式:
#   1. 确认你能用浏览器打开 https://github.com
#   2. 把 <USERNAME> 替换成你的 GitHub 用户名
#   3. 在 bash 里跑: sh push-to-github.sh

set -e

USERNAME="wdy2026"              # GitHub 自动小写化后的实际用户名
REPO_NAME="xiaobai-nixiangji"
REMOTE="https://github.com/${USERNAME}/${REPO_NAME}.git"

if [ "$USERNAME" = "<USERNAME>" ]; then
  echo "请先编辑本文件,把 USERNAME 改成你的 GitHub 用户名"
  exit 1
fi

echo "添加 remote: $REMOTE"
git remote add origin "$REMOTE" 2>/dev/null || git remote set-url origin "$REMOTE"

echo "推送到 GitHub..."
git push -u origin main

echo ""
echo "✅ 推送完成,仓库地址: $REMOTE"
