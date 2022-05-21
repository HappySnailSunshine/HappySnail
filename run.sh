#!/usr/bin/env sh

#拉取最新代码
git pull

echo 最新代码拉取完毕

# 生成静态文件
npm run build

echo 静态文件构建完成