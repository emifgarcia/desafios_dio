#!/bin/bash

#script de criação de estrutura de usuários, diretórios e permissões

mkdir /publico /adm /ven /sec
chown root /publico /adm /sec

groupadd GRP_ADM 
groupadd GRP_VEN
groupadd GRP_SEC

chgrp GRP_ADM /adm
chgrp GRP_VEN /ven
chgrp GRP_SEC /sec

useradd carlos -c "carlos" -m -s /usr/bin/bash -p $(openssl passwd senha123) -G GRP_ADM
useradd maria -c "maria" -m -s /usr/bin/bash -p $(openssl passwd senha123) -G GRP_ADM
useradd joao -c "joao" -m -s /usr/bin/bash -p $(openssl passwd senha123) -G GRP_ADM

useradd debora -c "debora" -m -s /usr/bin/bash -p $(openssl passwd senha123) -G GRP_VEN
useradd sebastiana -c "sebastiana" -m -s /usr/bin/bash -p $(openssl passwd senha123) -G GRP_VEN
useradd roberto -c "roberto" -m -s /usr/bin/bash -p $(openssl passwd senha123) -G GRP_VEN

useradd josefina -c "josefina" -m -s /usr/bin/bash -p $(openssl passwd senha123) -G GRP_SEC
useradd amanda -c "amanda" -m -s /usr/bin/bash -p $(openssl passwd senha123) -G GRP_SEC
useradd rogerio -c "rogerio" -m -s /usr/bin/bash -p $(openssl passwd senha123) -G GRP_SEC

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
