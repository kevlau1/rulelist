#!/bin/bash

if ! type curl >/dev/null 2>&1; then 
yellow "检测到curl未安装，安装中 "
if [ $release = "Centos" ]; then
    yum -y update && yum install curl -y
else
    apt-get update -y && apt-get install curl -y
fi	   
else
    green "curl已安装"
fi

if ! type wget >/dev/null 2>&1; then 
yellow "检测到wget未安装，安装中 "
if [ $release = "Centos" ]; then
    yum -y update && yum install wget -y
else
    apt-get update -y && apt-get install wget -y
fi	   
else
    green "wget已安装"
fi

if ! type sudo >/dev/null 2>&1; then 
yellow "检测到sudo未安装，安装中 "
if [ $release = "Centos" ]; then
    yum -y update && yum install sudo -y
else
    apt-get update -y && apt-get install sudo -y
fi	   
else
    green "sudo已安装"
fi

cd /etc/XrayR
wget https://raw.githubusercontent.com/kevlau1/rulelist/main/rulelist
sudo sed -i 's/RuleListPath:/RuleListPath: \/etc\/XrayR\/rulelist/g' /etc/XrayR/config.yml
xrayr restart
