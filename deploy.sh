git config user.name "TravisCI"
git config user.email "yindaheng98@163.com"
set -e
git clone -b dev https://github.com/yindaheng98/yindaheng98.github.io.git
rm -rf yindaheng98.github.io/blogs
cp -r 学习笔记 yindaheng98.github.io/blogs
cd yindaheng98.github.io
git add -A
set +e
git commit -m "TravisCI push"
set -e
git push -u https://$1@github.com/yindaheng98/yindaheng98.github.io.git HEAD:source --force