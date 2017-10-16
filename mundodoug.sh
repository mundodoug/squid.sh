#!/bin/bash
PS1="\[\e[0;32m\][\t] => \[\e[0m\]"
clear

echo "=== Script Oficial do Canal @MundoDoug ==="
echo 
echo Feito por @Dougssh
echo 
echo 

echo 

echo " "
cat -n /etc/issue |grep 1 |cut -d' ' -f6,7,8 |sed 's/1//' |sed 's/	//' > /etc/so 
echo -e "\033[0;32mPara a instalação ser correta é preciso o ip.
Digite o ip !\033[0m"
read -p "Qual seu IP?: " IP
echo " "
                        echo " "
            echo " "            
echo -e "\033[0;32m> \033[0;32mSeu sistema operacional:\033[1;31m $(cat /etc/so)"
echo -e "\033[0;32m> \033[0;32mCanal:\033[0;32m @MundoDoug"
echo -e "\033[0;32m> \033[0;32mSQUID NAS PORTAS:\033[1;33m 80, 8080, 8799, 3128\033[0m"
echo -e "\033[0;32m> \033[0;32mSSH NOS IPS: \033[1;31m$IP, localhost, 127.0.0.1\033[0m"
echo " "
echo -e "\033[1;33m>Por favor, aguarde até o fim da instalação dos pacotes"
echo ""
echo " "
if 
cat /etc/so |grep \S 1> /dev/null 2> /dev/null
then
echo -e "\033[1;37mConfigurando Fedora, Aguarde...\033[0m"
dnf update -y 1> /dev/null 2> /dev/null
dnf install squid -y 1> /dev/null 2> /dev/null
dnf install iptables -y 1> /dev/null 2> /dev/null
dnf install python -y 1> /dev/null 2> /dev/null
dnf install nano -y 1> /dev/null 2> /dev/null
clear 
cd /etc/squid
sleep 1
echo " "
echo " Aguarde Enquanto configuro o seu squid ..."
echo " "
echo " "
echo " "
echo " "
echo " "
echo " 
# Melhor configuração para o seu squid By @Dougssh
#
# Canal: https://t.me/MundoDoug
#
 
# Exemplo de regra que permite o acesso de suas redes locais.
# Adaptar para listar suas redes IP (internas) de onde a navegação
# deveria ser permitido
 
acl localnet src 0.0.0.1-0.255.255.255  # RFC 1122 "esta" rede (LAN)
acl localnet src 10.0.0.0/8             # RFC 1918 rede local privada (LAN)
acl localnet src 100.64.0.0/10          # RFC 6598 espaço de endereço compartilhado (CGN)
 
acl url1 dstdomain -i sdp.vivo.com.br
acl url2 dstdomain -i ddivulga.com.br
acl ip dstdomain -i $IP
#
# INSIRA SUA (S) PRÓPRIA REGRA (S) AQUI PARA PERMITIR O ACESSO DOS SEUS CLIENTES:
#
visible_hostname @Dougssh
 
# Exemplo de regra que permite o acesso de suas redes locais.
# Adapte localnet na seção ACL para listar suas redes IP (internas)
# De onde a navegação deve ser permitida
http_access allow url1
http_access allow url2
http_access allow ip
 
# Squid normalmente escuta a porta:
http_port 80
http_port 8080
http_port 3128
http_port 8799
 
# descomente e ajuste o seguinte para adicionar um diretório de cache de disco
cache_dir ufs /var/spool/squid 100 16 256
 
# Deixe coredumps no primeiro diretório de cache
coredump_dir /var/spool/squid
 
#
# Adicione qualquer uma das suas próprias entradas refresh_pattern acima dessas.
#
refresh_pattern ^ftp:           1440    20%     10080
refresh_pattern ^gopher:        1440    0%      1440
#refresh_pattern -i (/cgi-bin/|\?) 0     0%      0
refresh_pattern .               0       20%     4320
 
#Torne-se anônimo
forwarded_for off
via off
 
#Patrocinado pelo @MundoDoug
# O canal mais amado e odiado do telegram" > /etc/squid/squid.conf
service squid restart
echo " "
echo "Aguarde mais um momento para criar um arquivo openvpn"
echo " "
cd
echo ""
wget https://raw.githubusercontent.com/mundodoug/squid.sh/master/opendoug.sh
chmod u+x opendoug.sh
echo " "
cd
echo " "
wget https://raw.githubusercontent.com/K1R170/openvivo/master/openvivo.sh
echo " "
cd 
clear
echo "Bloqueando torrent......."
sleep 1
iptables -t nat -A PREROUTING -i eth0 -p tcp --dport 6881:6889 -j DNAT --to-dest 127.0.0.1
iptables -A FORWARD -p tcp -i eth0 --dport 6881:6889 -d 127.0.0.1 -j REJECT
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
clear
sleep 1
echo " "
echo -e "\033[0;32mCriado por @Dougssh do canal @MundoDoug \033[0;32m"
echo " "
echo -e "\033[01;31mPara utilizar o Openvpn Unilogin, utilize o comando:\033[01;31m" 
echo -e "\033[1;33m bash openvivo.sh\033[1;33m"
echo " "
echo -e "\033[01;31mPara utilizar o Openvpn Multilogin, use o comando:\033[01;31m"
echo -e "\033[1;33m./opendoug.sh\033[1;33m"
echo " "
echo -e "\033[01;31mEntre no meu canal e seja bem vindo:\033[01;31m"
echo -e "\033[1;33mt.me/MundoDoug\033[1;33m"
PS1="\[\e[0;32m\][\t] => \[\e[0m\]"
exit 0
fi
if 
cat /etc/so |grep -i ubuntu 1> /dev/null 2> /dev/null 
then 
echo -e "\033[01;37mConfigurando Debian, Aguarde...\033[0m"

apt-get update 
apt-get install -y squid3 
clear
cd /etc/squid3
echo " "
echo " 
# Melhor configuração para o seu squid By @Dougssh
#
# Canal: https://t.me/MundoDoug
#
 
# Exemplo de regra que permite o acesso de suas redes locais.
# Adaptar para listar suas redes IP (internas) de onde a navegação
# deveria ser permitido
 
acl localnet src 0.0.0.1-0.255.255.255  # RFC 1122 "esta" rede (LAN)
acl localnet src 10.0.0.0/8             # RFC 1918 rede local privada (LAN)
acl localnet src 100.64.0.0/10          # RFC 6598 espaço de endereço compartilhado (CGN)
 
acl url1 dstdomain -i sdp.vivo.com.br
acl url2 dstdomain -i ddivulga.com.br
acl ip dstdomain -i $IP
#
# INSIRA SUA (S) PRÓPRIA REGRA (S) AQUI PARA PERMITIR O ACESSO DOS SEUS CLIENTES:
#
visible_hostname @Dougssh
 
# Exemplo de regra que permite o acesso de suas redes locais.
# Adapte localnet na seção ACL para listar suas redes IP (internas)
# De onde a navegação deve ser permitida
http_access allow url1
http_access allow url2
http_access allow ip
 
# Squid normalmente escuta a porta:
http_port 80
http_port 8080
http_port 3128
http_port 8799
 
# descomente e ajuste o seguinte para adicionar um diretório de cache de disco
#cache_dir ufs /var/spool/squid 100 16 256
 
# Deixe coredumps no primeiro diretório de cache
#coredump_dir /var/spool/squid3
 
#
# Adicione qualquer uma das suas próprias entradas refresh_pattern acima dessas.
#
refresh_pattern ^ftp:           1440    20%     10080
refresh_pattern ^gopher:        1440    0%      1440
refresh_pattern .               0       20%     4320
 
#Torne-se anônimo
forwarded_for off
via off
 
#Patrocinado pelo @MundoDoug
# O canal mais amado e odiado do telegram" > /etc/squid3/squid.conf
service squid3 restart
echo " "
cd
echo ""
wget https://raw.githubusercontent.com/mundodoug/squid.sh/master/opendoug.sh
chmod u+x opendoug.sh
echo " "
cd
echo " "
wget https://raw.githubusercontent.com/K1R170/openvivo/master/openvivo.sh
echo " "
cd 
clear
sleep 1
iptables -t nat -A PREROUTING -i eth0 -p tcp --dport 6881:6889 -j DNAT --to-dest 127.0.0.1
iptables -A FORWARD -p tcp -i eth0 --dport 6881:6889 -d 127.0.0.1 -j REJECT
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
echo " "
clear
sleep 1
cho -e "\033[0;32mCriado por @Dougssh do canal @MundoDoug \033[0;32m"
echo " "

echo " vai tomar no cú"
echo

echo
echo
echo "brincadeira manolo 😂😂😂"
echo -e "\033[01;31mEntre no meu canal e seja bem vindo:\033[01;31m"
echo -e "\033[1;33mt.me/MundoDoug\033[1;33m"
PS1="\[\e[0;32m\][\t] => \[\e[0m\]"
exit 0
fi 
