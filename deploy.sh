#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

# 生成静态文件
npm run build

# 进入生成的文件夹
cd .site

git config --global user.name "happysnail"
git config --global user.email "1367623781@qq.com"

#发布到github gh-pages分支
git init
git add -A
git commit -m 'deploy'
git push origin gh-pages # 发布到github

#删除文件
cd ..
rm -rf .site
