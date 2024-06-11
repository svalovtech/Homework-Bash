#!/bin/bash


function user() {
  
   for user in emma mia chloe zoe
     
do

      useradd $user
done
}

function folders() {

   for folders in day week month year

do

    mkdir $folders

done
}

function install() {

   for install in httpd  ghostscript mysql-server php php-bcmath php-curl php-imagick php-intl php-json php-mbstring php-mysql php-xml php-zip

do 

   yum install -y $install
   wget https://wordpress.org/latest.tar.gz
   tar zxf latest.tar.gz
   mv wordpress /var/www/html/
   chown -R www-data:www-data /var/www/html/
   chmod 755 /var/www/html/
   systemctl start hhtpd
   systemctl enable httpd
   systemctl restart httpd

   echo "Wordpress installing"
done
}

 

if [ "$1" == "create users" ]
then
    create users

elif [ "$2" == "create folders" ]
then
   create folders

elif [ "$3" == "install wordpress" ]
then
        install wordpress
else
     echo "Invalid option. Use users ,folders or install."
fi


