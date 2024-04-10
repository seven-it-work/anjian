 
#!/usr/bin/env bash

# 添加安全目录例外（如果需要）
git config --global --add safe.directory /storage/emulated/0/mt2/anjian

# 切换到脚本所在目录
cd /storage/emulated/0/mt2/anjian

# 添加所有更改到暂存区
git add .

# 提交所有更改，并附带提交信息 "auto push"
git commit -m "auto push"

# 推送到远程仓库
git push

# 暂停脚本执行，等待用户按键继续
read -p "按任意键退出..." dummy_var
 