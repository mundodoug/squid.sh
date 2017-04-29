#!/bin/bash
echo "=========================================="
echo "=== Script Oficial do Canal @MundoDoug ==="
echo "=========================================="
echo "================ Feito por @Dougssh ======"
echo "=========================================="
echo "==================== Apenas para Fedora =="
echo "=========================================="
echo " "
echo -e "\033[0;32m-----> \033[0;32mSeu sistema operacional: Fedora\033[0;32m"
echo -e "\033[0;32m-----> \033[0;32mCanal:\033[0;32m @MundoDoug"
echo -e "\033[0;32m-----> \033[0;32mSQUID NAS PORTAS:\033[1;33m 80, 8080, 8799, 3128\033[0m"
echo -e "\033[0;32m-----> \033[0;32mSSH NOS IPS: \033[1;33m localhost, 127.0.0.1\033[0m"
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
echo -e "\033[0;32mPara a instalação ser correta é preciso o ip.
Digite o ip !\033[0m"
read -p "Qual seu IP?: " IP
echo " Aguarde Configurando Squid"
sleep 5
echo " 
#
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
acl ip dstdomain $IP
acl iplocal dstdomain 127.0.0.1
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
http_access allow iplocal
 
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
refresh_pattern -i (/cgi-bin/|\?) 0     0%      0
refresh_pattern .               0       20%     4320
 
#Torne-se anônimo
forwarded_for off
via off
 
#Patrocinado pelo @MundoDoug
# O canal mais amado e odiado do telegram" 
> /etc/squid/squid.conf
echo " "
sleep 5
clear
echo" "
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
echo "Bloqueando torrent......."
sleep 3
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
echo " "
sleep 3
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
