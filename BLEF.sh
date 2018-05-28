#!/bin/bash
#Create by R.I.P_C on 2018/05/27
echo "Brew link error fixer v1.2.2"
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
    echo -e "\033[32m$LOGNAME does not have writing permission in $dir . input sudo password to proceed.\033[0m"
    sudo chown -R $LOGNAME:admin $dir
else
    echo -e  "\033[31m$LOGNAME does have writing permission in $dir .\033[0m"
fi
