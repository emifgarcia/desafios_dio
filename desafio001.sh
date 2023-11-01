#!/bin/bash

#script de criação de estrutura de usuários, diretórios e permissões

echo "criando diretórios..."

mkdir /publico /adm /ven /sec
chown root /publico /adm /sec

echo "criando grupos de usuários..."

groupadd GRP_ADM 
groupadd GRP_VEN
groupadd GRP_SEC

echo "criando usuários e adicionando aos grupos..."

useradd carlos -c "carlos" -m -s /usr/bin/bash -p $(openssl passwd senha123) -G GRP_ADM
useradd maria -c "maria" -m -s /usr/bin/bash -p $(openssl passwd senha123) -G GRP_ADM
useradd joao -c "joao" -m -s /usr/bin/bash -p $(openssl passwd senha123) -G GRP_ADM

useradd debora -c "debora" -m -s /usr/bin/bash -p $(openssl passwd senha123) -G GRP_VEN
useradd sebastiana -c "sebastiana" -m -s /usr/bin/bash -p $(openssl passwd senha123) -G GRP_VEN
useradd roberto -c "roberto" -m -s /usr/bin/bash -p $(openssl passwd senha123) -G GRP_VEN

useradd josefina -c "josefina" -m -s /usr/bin/bash -p $(openssl passwd senha123) -G GRP_SEC
useradd amanda -c "amanda" -m -s /usr/bin/bash -p $(openssl passwd senha123) -G GRP_SEC
useradd rogerio -c "rogerio" -m -s /usr/bin/bash -p $(openssl passwd senha123) -G GRP_SEC

echo "configurando permissões dos diretórios..."

chgrp GRP_ADM /adm
chgrp GRP_VEN /ven
chgrp GRP_SEC /sec

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "fim..."
