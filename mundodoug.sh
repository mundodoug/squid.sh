#!/bin/bash
echo "=========================================="
echo "=== Script Oficial do Canal @MundoDoug ==="
echo "=========================================="
echo "================ Feito por @Dougssh ======"
echo "=========================================="
echo "          "
sleep 2
clear
echo -e "\033[0;32m-----> \033[0;32mSeu sistema operacional: Fedora\033[0;32m"
echo -e "\033[0;32m-----> \033[0;32mCanal:\033[0;32m @MundoDoug"
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
echo -e "\033[0;32mPara a instalação ser correta é preciso o ip.
Digite o ip !\033[0m"
read -p "Qual seu IP?: " IP
echo " Aguarde Configurando VPS"
sleep 3
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
acl payload dstdomain -i "/etc/squid/payload.txt"
 
acl SSL_ports port 443
acl Safe_ports port 80          # http
acl Safe_ports port 21          # ftp
acl Safe_ports port 443         # https
acl Safe_ports port 70          # gopher
acl Safe_ports port 210         # wais
acl Safe_ports port 280         # http-mgmt
acl Safe_ports port 488         # gss-http
acl Safe_ports port 591         # filemaker
acl Safe_ports port 777         # multiling http
acl CONNECT method CONNECT
 
#
# INSIRA SUA (S) PRÓPRIA REGRA (S) AQUI PARA PERMITIR O ACESSO DOS SEUS CLIENTES:
#
visible_hostname @Dougssh
 
# Exemplo de regra que permite o acesso de suas redes locais.
# Adapte localnet na seção ACL para listar suas redes IP (internas)
# De onde a navegação deve ser permitida
http_access allow url1
http_access allow url2
http_access allow payload
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
# O canal mais amado e odiado do telegram" > /etc/squid/squid.conf
echo"
.vivo.com.br
.claro.com.br
.ddivulga.com.br
.oi.com.br
.speedtest.net
.monacocas.com.br
ukrtelecom.speedtest.net
ulan-ude.speedtest.net
unet.speedtest.net
unidata.speedtest.net
up.speedtest.net
upccz.speedtest.net
upload.speedtest.net
upnettelecom.speedtest.net
ural.speedtest.net
uralwes.speedtest.net
urbandale.speedtest.net
usu.speedtest.net
uts-curacao.speedtest.net
v.speedtest.net
vad-youbroadband.speedtest.net
vancouver.speedtest.net
vdtcomms.speedtest.net
vegawlan.speedtest.net
veracity.speedtest.net
verelox.speedtest.net
verivoz.speedtest.net
verizon.speedtest.net
www.verizon.speedtest.net
vermontel.speedtest.net
vetorial.speedtest.net
vgarant.speedtest.net
vienna.speedtest.net
viewqwest.speedtest.net
vivatelecom.speedtest.net
vivint-elpaso.speedtest.net
viz-youbroadband.speedtest.net
vizada.speedtest.net
vmedia.speedtest.net
vodafone.speedtest.net
vodien.speedtest.net
voenergies.speedtest.net
volgodonsk.speedtest.net
volia.speedtest.net
vostronet.speedtest.net
vovone.speedtest.net
w.speedtest.net
w2ww.speedtest.net
waia.speedtest.net
wanxp.speedtest.net
war.speedtest.net
warsaw.speedtest.net
wateen.speedtest.net
wbmx.speedtest.net
wcc.speedtest.net
wctel.speedtest.net
wdc.speedtest.net
web4africa.speedtest.net
webafrica.speedtest.net
webdatasolusindo.speedtest.net
webdesk.speedtest.net
webnx.speedtest.net
webshare.speedtest.net
wellington.speedtest.net
wemacom.speedtest.net
westmancom.speedtest.net
weww.speedtest.net
wichita.speedtest.net
wifitec.speedtest.net
wiip.speedtest.net
wildcard.speedtest.net
wildpark.speedtest.net
wilhelm-tel.speedtest.net
windhoek.speedtest.net
windstream.speedtest.net
wispone.speedtest.net
wiz.speedtest.net
wln.speedtest.net
wman.speedtest.net
wow.speedtest.net
wowrack.speedtest.net
wsww.speedtest.net
wtcks.speedtest.net
ww.speedtest.net
www.ww.speedtest.net
ww1.speedtest.net
ww3w.speedtest.net
ww42.speedtest.net
wwe.speedtest.net
wwew.speedtest.net
wwqw.speedtest.net
www%E2%80%8B.speedtest.net
www-admin.speedtest.net
www1.speedtest.net
wwww.speedtest.net
wyomingwireless.speedtest.net
xfiber.speedtest.net
xfinitiy.speedtest.net
www.xfinity.speedtest.net
xilo.speedtest.net
xl.speedtest.net
xmission.speedtest.net
xsn.speedtest.net
y.speedtest.net
yako2508.speedtest.net
yinchuan.speedtest.net
york.speedtest.net
youbroadband.speedtest.net
youmumbai.speedtest.net
youpune.speedtest.net
yourlink.speedtest.net
zain.speedtest.net
zamix.speedtest.net
zapp.speedtest.net
zdbb.speedtest.net
zdstatic.speedtest.net
zerofail.speedtest.net
zerofail2.speedtest.net
zerofail3.speedtest.net
zerofail4.speedtest.net
zgierz.speedtest.net
ziggo.speedtest.net
zon.speedtest.net
zuku.speedtest.net
zx4.speedtest.net
www.claro.com.br
Globo.claro.com.br
Netclaro.claro.com.br
Recarhafacil.claro.com.br
apps.claro.com.br
arizona.claro.com.br
atendimentoonline.claro.com.br
www.atendimentoonline.claro.com.br
av.claro.com.br
bandalarga.claro.com.br
cadastropre.claro.com.br
chat.claro.com.br
chipre.claro.com.br
clareando.claro.com.br
claro-gestoronline.claro.com.br
www.claro-gestoronline.claro.com.br
claroapp.claro.com.br
www.claroclube.claro.com.br
claroclubetv.claro.com.br
clarocombo.claro.com.br
clarofixo.claro.com.br
www.clarofixo.claro.com.br
clarohdtv.claro.com.br
clarotv.claro.com.br
www.clarotv.claro.com.br
cls.claro.com.br
www.cls.claro.com.br
clube.claro.com.br
comunidadeclarohdtv.claro.com.br
comunidadeclarotv.claro.com.br
consumo.claro.com.br
contaonline.claro.com.br
www.contaonline.claro.com.br
contaonline2.claro.com.br
contaonlinepf.claro.com.br
www.contaonlinepf.claro.com.br
contaonlinepf2.claro.com.br
coreiadonorte.claro.com.br
coreiadosul.claro.com.br
cpp.claro.com.br
craque.claro.com.br
cs.claro.com.br
cwa.claro.com.br
www.cwa.claro.com.br
debitocartao.claro.com.br
www.debitocartao.claro.com.br
ecob.claro.com.br
www.ecob.claro.com.br
empresas.claro.com.br
equador.claro.com.br
eritreia.claro.com.br
extranet.claro.com.br
www.extranet.claro.com.br
extranettoken.claro.com.br
forms.claro.com.br
frontend.claro.com.br
gambia.claro.com.br
gedaa.claro.com.br
www.gedaa.claro.com.br
gestoronline.claro.com.br
gevenue.claro.com.br
golpf.claro.com.br
www.golpf.claro.com.br
hackertrace1.internal.nsa.gov.claro.com.br
hackertrace2.internal.nsa.gov.claro.com.br
hackertrace3.internal.nsa.gov.claro.com.br
hackertrace4.internal.nsa.gov.claro.com.br
www.guiadevendas.claro.com.br
r1.homolog.claro.com.br
r1b.homolog.claro.com.br
icops.claro.com.br
www.icops.claro.com.br
idp.claro.com.br
www.idp.claro.com.br
www.internetprepaga.claro.com.br
internetprepago.claro.com.br
www.internetprepago.claro.com.br
iw.claro.com.br
www.iw.claro.com.br
iw01.claro.com.br
www.iw01.claro.com.br
java.claro.com.br
jupia.claro.com.br
www.jupia.claro.com.br
keys.claro.com.br
logisticasp.claro.com.br
www.logisticasp.claro.com.br
lojaonline.claro.com.br
www.lojaonline.claro.com.br
m.lojaonline.claro.com.br
www.m.lojaonline.claro.com.br
lojaonline2.claro.com.br
www.lojaonline2.claro.com.br
lojaonline3.claro.com.br
www.lojaonline3.claro.com.br
m.claro.com.br
m-clarofixo.claro.com.br
m-clarotv.claro.com.br
mail.claro.com.br
www.mail.claro.com.br
mc.claro.com.br
www.mc.claro.com.br
mcrecarga.claro.com.br
www.mcrecarga.claro.com.br
mcwap.claro.com.br
retail.mds.claro.com.br
messenger.claro.com.br
www.messenger.claro.com.br
minha.claro.com.br
minhaclaro.claro.com.br
www.minhaclaro.claro.com.br
minhaclaroempresas.claro.com.br
www.minhaclaroempresas.claro.com.br
minhaclarotv.claro.com.br
www.minhaclarotv.claro.com.br
mmbox.claro.com.br
www.mmbox.claro.com.br
mms.claro.com.br
n.mobi.claro.com.br
z.mobi.claro.com.br
monacocas.claro.com.br
mx1.claro.com.br
negocios.claro.com.br
nfe.claro.com.br
www.nfe.claro.com.br
ngc.claro.com.br
novaextranetclaro.claro.com.br
www.novaextranetclaro.claro.com.br
oappaut.claro.com.br
www.oappaut.claro.com.br
oappauthml.claro.com.br
ofertasonline.claro.com.br
www.ofertasonline.claro.com.br
office.claro.com.br
www.office.claro.com.br
origem-portal.claro.com.br
owa.claro.com.br
www.owa.claro.com.br
pdv.claro.com.br
www.pdv.claro.com.br
portalcorporativo.claro.com.br
www.portalcorporativo.claro.com.br
portaldenotas.claro.com.br
www.portaldenotas.claro.com.br
ra.claro.com.br
rbl.claro.com.br
recargafacil.claro.com.br
www.recargafacil.claro.com.br
recargawap.claro.com.br
secure.claro.com.br
www.secure.claro.com.br
sip.claro.com.br
smartanalytics.claro.com.br
www.smartanalytics.claro.com.br
smtp.claro.com.br
stgted.claro.com.br
streaming.claro.com.br
suica.claro.com.br
mx1.svc.claro.com.br
mx2.svc.claro.com.br
vpnrj.svc.claro.com.br
vpnsp.svc.claro.com.br
sync.claro.com.br
ted.claro.com.br
www.ted.claro.com.br
torpedoequipe.claro.com.br
www.torpedoequipe.claro.com.br
treina.claro.com.br
www.treina.claro.com.br
uruguai.claro.com.br
vendasapp.claro.com.br
www.vendasapp.claro.com.br
vig.claro.com.br
www.vig.claro.com.br
vigia.claro.com.br
wap.claro.com.br
webconf.claro.com.br
woa.claro.com.br
www.woa.claro.com.br
www2.claro.com.br
www3.claro.com.br" > /etc/squid/payload.txt
echo " "
clear
echo" "
echo "Aguarde mais um momento para criar um arquivo openvpn"
sleep 3
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
