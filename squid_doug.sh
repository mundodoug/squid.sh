#!/bin/bash
echo "******************************************"
echo "*** Script Oficial do Canal @MundoDoug ***"
echo "******************************************"
echo "*****************Feito por @Dougssh*******"
echo "          "                     
echo "          "
echo -e "\033[1;31mPara a instalação ser correta é preciso o ip.
Digite o ip !\033[0m"
read -p ": " ip
clear
echo -e "\033[1;31m-----> \033[01;37mSeu sistema operacional: Fedora\033[1;31m"
echo -e "\033[1;31m-----> \033[01;37mSeu ip:\033[1;31m $ip"
echo -e "\033[1;31m-----> \033[1;37mSQUID NAS PORTAS:\033[1;31m 80, 8080, 8799, 3128\033[0m"
echo -e "\033[1;31m-----> \033[1;37mSSH NOS IPS: \033[1;31m$ip, localhost, 127.0.0.1\033[0m"
echo "                                           "
echo "                                           "
echo "                                           "
clear
echo "                                           "
echo "                                           "
echo " Por favor, aguarde até o fim da instalação dos pacotes"
echo "                                            "
echo "                                            "
echo "                                            "
clear
dnf update -y
dnf install wget -y
dnf install squid -y
dnf install nano -y
dnf install python -y
clear
rm /etc/squid/squid.conf
cd /etc/squid
wget https://pastebin.com/raw/124vStHp -O squid.conf && wget http://pastebin.com/raw/UFJ7RbDN -O payload.txt
service squid restart
