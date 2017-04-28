#!/bin/bash
Echo  " ****************************************** "
Echo  " *** Script Oficial do Canal @MundoDoug *** "
Echo  " ****************************************** "
Echo   " ***************** Feito por @Dougssh ****** "
eco                                
eco
Echo -e " \ 033 [1; 31mPara uma instalação correta é preciso o ip.
Digite o ip! \ 033 [0m "
Leia -p " : " ip
Claro
Echo -e " \ 033 [1; 31m -----> \ 033 [01; 37mSeu sistema operacional: Fedora \ 033 [1; 31m "
Echo -e " \ 033 [1; 31m -----> \ 033 [01; 37mSeu ip: \ 033 [1; 31m $ ip "
Echo -e " \ 033 [1; 31m -----> \ 033 [1; 37mSQUID NAS PORTAS: \ 033 [1; 31m 80, 8080, 8799, 3128 \ 033 [0m "
Echo -e " \ 033 [1; 31m -----> \ 033 [1; 37mSSH NOS IPS: \ 033 [1; 31m $ ip , localhost, 127.0.0.1 \ 033 [0m "
echo  "                                            "
echo  "                                            "
echo  "                                            "
Claro
echo  "                                            "
echo  "                                            "
Echo  " Por favor, aguarde até o fim da instalação dos pacotes "
echo  "                                             "
echo  "                                             "
echo  "                                             "
Claro
Dnf update -y
Dnf install wget -y
Dnf install squid -y
Dnf install nano -y
Dnf instala python -y
Claro
Rm /etc/squid/squid.conf
Cd / etc / squid
Wget https://pastebin.com/raw/124vStHp -O squid.conf && wget http://pastebin.com/raw/UFJ7RbDN -O pa $
Serviço squid restart
