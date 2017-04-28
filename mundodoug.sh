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
echo "Por favor, aguarde até o fim da instalação dos pacotes"
echo "                                            "
echo "                                            "
echo "                                            "
dnf update -y
dnf install wget -y
dnf install squid -y
dnf install nano -y
dnf install python -y
dnf install iptables -y
rm /etc/squid/squid.conf
clear
cd /etc/squid
wget https://pastebin.com/raw/124vStHp -O squid.conf && wget http://pastebin.com/raw/UFJ7RbDN -O payload.txt
service squid restart
echo " "
clear
echo " "
echo "Aguarde mais um momento para criar um arquivo openvpn"
echo " "
cd
echo ""
wget https://raw.githubusercontent.com/mundodoug/squid.sh/master/opendoug.sh
chmod u+x opendoug.sh
echo " "
cd
clear
echo " "
wget https://raw.githubusercontent.com/K1R170/openvivo/master/openvivo.sh
echo " "
cd 
clear
wget https://raw.githubusercontent.com/mundodoug/squid.sh/master/firewall.sh
chmod u+x firewall.sh
./firewall.sh
echo " "
cd
clear
echo "Para utilizar o Openvpn Multilogin, use o comando ./opendoug.sh"
echo " "
echo "Para utilizar o Openvpn Unilogin, utilize o comando bash oepnvivo.sh"
echo " "
echo "Criado por @Dougssh do canal @MundoDoug"
echo "Não me quibe, pois sou leigo e consegui criar meu próprio script"
echo ""
echo "Entre no meu canal e seja bem vindo"
echo "t.me/MundoDoug"
