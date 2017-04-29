#!/bin/bash
echo "=========================================="
echo "=== Script Oficial do Canal @MundoDoug ==="
echo "=========================================="
echo "================ Feito por @Dougssh ======"
echo "=========================================="
echo "          "
sleep 1
echo -e "\033[0;32mPara a instalação ser correta é preciso o ip.
Digite o ip !\033[0m"
read -p ": " ip
clear
echo -e "\033[0;32m-----> \033[0;32mSeu sistema operacional: Fedora\033[0;32m"
echo -e "\033[0;32m-----> \033[0;32mSeu ip:\033[0;32m $ip"
echo -e "\033[0;32m-----> \033[0;32mSQUID NAS PORTAS:\033[1;33m 80, 8080, 8799, 3128\033[0m"
echo -e "\033[0;32m-----> \033[0;32mSSH NOS IPS: \033[1;33m$ip, localhost, 127.0.0.1\033[0m"
echo " "
echo -e "\033[1;33m-----> \033[1;33mPor favor, aguarde até o fim da instalação dos pacotes[0m"
echo ""
echo "                                            "
echo "  "
sleep 1
echo " "
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
read -p "IP address: " -e -i $IP IP
service squid restart
echo " "
clear
echo " "
echo "Aguarde mais um momento para criar um arquivo openvpn"
sleep 1
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
echo Bloqueando torrent.......
sleep 1
iptables -t nat -A PREROUTING -i eth0 -p tcp --dport 6881:6889 -j DNAT --to-dest $ip
iptables -A FORWARD -p tcp -i eth0 --dport 6881:6889 -d $ip -j REJECT
iptables -A OUTPUT -p tcp --dport 6881:6889 -j DROP
iptables -A OUTPUT -p udp --dport 6881:6889 -j DROP
iptables -A FORWARD -m string --algo bm --string "BitTorrent" -j DROP
iptables -A FORWARD -m string --algo bm --string "BitTorrent protocol" -j DROP
iptables -A FORWARD -m string --algo bm --string "peer_id=" -j DROP
iptables -A FORWARD -m string --algo bm --string ".torrent" -j DROP
iptables -A FORWARD -m string --algo bm --string "announce.php?passkey=" -j DROP
iptables -A FORWARD -m string --algo bm --string "torrent" -j DROP
iptables -A FORWARD -m string --algo bm --string "announce" -j DROP
iptables -A FORWARD -m string --algo bm --string "info_hash" -j DROP
iptables -A FORWARD -m string --string "get_peers" --algo bm -j DROP
iptables -A FORWARD -m string --string "announce_peer" --algo bm -j DROP
iptables -A FORWARD -m string --string "find_node" --algo bm -j DROP

echo "Firewall configurado..."
sleep 1

echo " "
cd
clear 
echo "====================================================================="
echo "============ Criado por @Dougssh do canal @MundoDoug ================"
echo "====================================================================="
echo "Para utilizar o Openvpn Unilogin, utilize o comando: bash openvivo.sh"
echo "====================================================================="
echo "== Para utilizar o Openvpn Multilogin, use o comando ./opendoug.sh =="
echo "====================================================================="
echo "====== Entre no meu canal e seja bem vindo t.me/MundoDoug ==========="
echo "====================================================================="
