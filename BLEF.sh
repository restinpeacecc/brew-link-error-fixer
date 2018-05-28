#!/bin/bash
#Create by R.I.P_C on 2018/05/27
echo "Brew link error fixer v1.2.1"
echo "by R.I.P_C"
echo -e "\033[32m---------------------------------------\033[0m"
echo -e "\033[31m$LOGNAME\033[0m at"
date
echo -e "\033[32m---------------------------------------\033[0m"

read -p "Input DIR PATH: " dir

if [ -d $dir ];then
    echo -e "\033[32mDIR Found!\033[0m"
else
    echo -e "\033[31mDIR Not Found!\033[0m"
    exit
fi

if [ ! -w $dir ];then
    echo -e "\033[32m$LOGNAME は $dir に書き権限がありません。操作します。\033[0m"
    sudo chown -R $LOGNAME:admin $dir
else
    echo -e  "\033[31m$LOGNAME は$dir に書き権限があります。操作不要。\033[0m"
fi
