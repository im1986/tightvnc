#!/bin/bash

#更新源

sudo apt-get update 

#安装tightvncserver

sudo apt-get install -y tightvncserver

#设置密码

vncpasswd

#运行并添加开机启动

sudo cp -f tightvncserver /etc/init.d/tightvncserver
sudo chmod 755 /etc/init.d/tightvncserver
sudo update-rc.d tightvncserver defaults
