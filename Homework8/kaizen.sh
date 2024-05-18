#!/bin/bash

mkdir kaizen hello world veaceslav

touch kaizen/kaizen hello/kaizen world/kaizen veaceslav/kaizen

chmod 777 kaizen/kaizen

chmod 546 hello/kaizen
chmod 644 world/kaizen
chmod 755 veaceslav/kaizen

adduser tim
adduser brad
adduser eric
adduser ann
adduser jenny

groupadd devops
groupadd dev
groupadd qa

usermod -a -G devops tim
usermod -a -G devops brad
usermod -a -G devops eric

usermod -a -G qa ann

usermod -a -G dev jenny

yum install -y wget tree httpd

systemctl start httpd  
systemctl enable httpd 
