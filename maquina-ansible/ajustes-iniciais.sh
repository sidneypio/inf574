#!/bin/ash
#
# ajustes iniciais
#
echo "Copiando arquivos de configuracao"
/bin/cp interfaces /etc/network/interfaces 
/bin/cp hosts /etc/hosts
/bin/cp hostname /etc/hostname
/bin/cp sshd_config /etc/ssh/sshd_config

echo "instalando dhpcd"
apk add dhcpd
/bin/cp dhcpd.conf /etc/dhcp/dhcpd.conf

echo "ajustes no git"
/sbin/apk add git
/usr/bin/git config --global user.email "sidneypio@gmail.com"
/usr/bin/git config --global user.name "Sidney Pio de Campos"

echo "criando chave rsa"
/usr/bin/ssh-keygen -t rsa
