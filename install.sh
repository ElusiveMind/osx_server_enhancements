#!/bin/bash

echo ""
echo ""
echo '     ___ _  _ ___   ___ _  _ _  _   _   _  _  ___ ___ ___ '
echo '    | _ \ || | _ \ | __| \| | || | /_\ | \| |/ __| __| _ \'
echo '    |  _/ __ |  _/ | _|| .` | __ |/ _ \| .` | (__| _||   /'
echo '    |_| |_||_|_|   |___|_|\_|_||_/_/ \_\_|\_|\___|___|_|_\'
echo "      v1.0 - Michael Bagnall - @mbagnall17 / @flyingflip"
echo " Designed to enhance the PHP version on default Mac OS X Server"
echo ""
echo ""
echo "Which version of PHP do you wish to install?"
echo "--------------------------------------------"
echo " 1. PHP 5.5.27 - Yoesmite 10.5.5 / El Capitain 10.11.0"
echo " 2. PHP 5.5.29 - Yoesmite 10.5.5 / El Capitain 10.11.1"
echo " 3. PHP 5.5.30 - El Capitain 10.11.2"
echo " 4. PHP 5.5.31 - El Capitain 10.11.4"
echo " 5. PHP 5.5.34 - El Capitain 10.10.5"
echo " 6. PHP 7.0.7 - experimental"
echo " 7. Exit"
read version

case $version in
[1]*)
  php="php-5.5.27.tar.gz"
  conf="./configure '--with-apxs2=/usr/sbin/apxs' '--prefix=/usr' '--mandir=/usr/share/man' '--infodir=/usr/share/info' '--sysconfdir=/private/etc' '--enable-cli' '--with-config-file-path=/etc' '--with-config-file-scan-dir=/Library/Server/Web/Config/php' '--with-libxml-dir=/usr' '--with-openssl=/usr/local/ssl' '--with-kerberos=/usr' '--with-zlib=/usr' '--enable-bcmath' '--with-bz2=/usr' '--enable-calendar' '--disable-cgi' '--with-curl=/usr' '--enable-dba' '--with-ndbm=/usr' '--enable-exif' '--enable-fpm' '--enable-ftp' '--with-icu-dir=/usr' '--with-ldap=/usr' '--with-ldap-sasl=/usr' '--with-libedit=/usr' '--enable-mbstring' '--enable-mbregex' '--with-mysql=mysqlnd' '--with-mysqli=mysqlnd' '--without-pear' '--with-pear=no' '--with-pdo-mysql=mysqlnd' '--with-mysql-sock=/tmp/mysql.sock' '--with-readline=/usr' '--enable-shmop' '--with-snmp=/usr' '--enable-soap' '--enable-sockets' '--enable-sysvmsg' '--enable-sysvsem' '--enable-sysvshm' '--with-tidy' '--enable-wddx' '--with-xmlrpc' '--with-iconv-dir=/usr' '--with-xsl=/usr' '--enable-zip'"
  ;;
[2]*)
  php="php-5.5.29.tar.gz"
  conf="./configure '--with-apxs2=/usr/sbin/apxs' '--prefix=/usr' '--mandir=/usr/share/man' '--infodir=/usr/share/info' '--sysconfdir=/private/etc' '--enable-cli' '--with-config-file-path=/etc' '--with-config-file-scan-dir=/Library/Server/Web/Config/php' '--with-libxml-dir=/usr' '--with-openssl=/usr/local/ssl' '--with-kerberos=/usr' '--with-zlib=/usr' '--enable-bcmath' '--with-bz2=/usr' '--enable-calendar' '--disable-cgi' '--with-curl=/usr' '--enable-dba' '--with-ndbm=/usr' '--enable-exif' '--enable-fpm' '--enable-ftp' '--with-icu-dir=/usr' '--with-ldap=/usr' '--with-ldap-sasl=/usr' '--with-libedit=/usr' '--enable-mbstring' '--enable-mbregex' '--with-mysql=mysqlnd' '--with-mysqli=mysqlnd' '--without-pear' '--with-pear=no' '--with-pdo-mysql=mysqlnd' '--with-mysql-sock=/tmp/mysql.sock' '--with-readline=/usr' '--enable-shmop' '--with-snmp=/usr' '--enable-soap' '--enable-sockets' '--enable-sysvmsg' '--enable-sysvsem' '--enable-sysvshm' '--with-tidy' '--enable-wddx' '--with-xmlrpc' '--with-iconv-dir=/usr' '--with-xsl=/usr' '--enable-zip'"
  ;;
[3]*)
  php="php-5.5.30.tar.gz"
  conf="./configure '--prefix=/usr' '--mandir=/usr/share/man' '--infodir=/usr/share/info' '--sysconfdir=/private/etc' '--enable-cli' '--with-config-file-path=/etc' '--with-config-file-scan-dir=/Library/Server/Web/Config/php' '--with-libxml-dir=/usr' '--with-openssl=/usr/local/ssl' '--with-kerberos=/usr' '--with-zlib=/usr' '--enable-bcmath' '--with-bz2=/usr' '--enable-calendar' '--disable-cgi' '--with-curl=/usr' '--enable-dba' '--with-ndbm=/usr' '--enable-exif' '--enable-fpm' '--enable-ftp' '--with-icu-dir=/usr' '--with-ldap=/usr' '--with-ldap-sasl=/usr' '--with-libedit=/usr' '--enable-mbstring' '--enable-mbregex' '--with-mysql=mysqlnd' '--with-mysqli=mysqlnd' '--without-pear' '--with-pear=no' '--with-pdo-mysql=mysqlnd' '--with-mysql-sock=/tmp/mysql.sock' '--with-readline=/usr' '--enable-shmop' '--with-snmp=/usr' '--enable-soap' '--enable-sockets' '--enable-sysvmsg' '--enable-sysvsem' '--enable-sysvshm' '--with-tidy' '--enable-wddx' '--with-xmlrpc' '--with-iconv-dir=/usr' '--with-xsl=/usr' '--enable-zip' --with-apxs2=/usr/sbin/apxs"
  ;;
[4]*)
  php="php-5.5.31.tar.gz"
  conf="./configure '--prefix=/usr' '--mandir=/usr/share/man' '--infodir=/usr/share/info' '--sysconfdir=/private/etc' '--enable-cli' '--with-config-file-path=/etc' '--with-config-file-scan-dir=/Library/Server/Web/Config/php' '--with-libxml-dir=/usr' '--with-openssl=/usr/local/ssl' '--with-kerberos=/usr' '--with-zlib=/usr' '--enable-bcmath' '--with-bz2=/usr' '--enable-calendar' '--disable-cgi' '--with-curl=/usr' '--enable-dba' '--with-ndbm=/usr' '--enable-exif' '--enable-fpm' '--enable-ftp' '--with-icu-dir=/usr' '--with-ldap=/usr' '--with-ldap-sasl=/usr' '--with-libedit=/usr' '--enable-mbstring' '--enable-mbregex' '--with-mysql=mysqlnd' '--with-mysqli=mysqlnd' '--without-pear' '--with-pear=no' '--with-pdo-mysql=mysqlnd' '--with-mysql-sock=/tmp/mysql.sock' '--with-readline=/usr' '--enable-shmop' '--with-snmp=/usr' '--enable-soap' '--enable-sockets' '--enable-sysvmsg' '--enable-sysvsem' '--enable-sysvshm' '--with-tidy' '--enable-wddx' '--with-xmlrpc' '--with-iconv-dir=/usr' '--with-xsl=/usr' '--enable-zip' --with-apxs2=/usr/sbin/apxs"
  ;;
[5]*)
  php="php-5.5.34.tar.gz"
  conf="./configure '--prefix=/usr' '--mandir=/usr/share/man' '--infodir=/usr/share/info' '--sysconfdir=/private/etc' '--enable-cli' '--with-config-file-path=/etc' '--with-config-file-scan-dir=/Library/Server/Web/Config/php' '--with-libxml-dir=/usr' '--with-openssl=/usr/local/ssl' '--with-kerberos=/usr' '--with-zlib=/usr' '--enable-bcmath' '--with-bz2=/usr' '--enable-calendar' '--disable-cgi' '--with-curl=/usr' '--enable-dba' '--with-ndbm=/usr' '--enable-exif' '--enable-fpm' '--enable-ftp' '--with-icu-dir=/usr' '--with-ldap=/usr' '--with-ldap-sasl=/usr' '--with-libedit=/usr' '--enable-mbstring' '--enable-mbregex' '--with-mysql=mysqlnd' '--with-mysqli=mysqlnd' '--without-pear' '--with-pear=no' '--with-pdo-mysql=mysqlnd' '--with-mysql-sock=/tmp/mysql.sock' '--with-readline=/usr' '--enable-shmop' '--with-snmp=/usr' '--enable-soap' '--enable-sockets' '--enable-sysvmsg' '--enable-sysvsem' '--enable-sysvshm' '--with-tidy' '--enable-wddx' '--with-xmlrpc' '--with-iconv-dir=/usr' '--with-xsl=/usr' '--enable-zip' --with-apxs2=/usr/sbin/apxs"
  ;;
[6]*)
  php="php-7.0.7.tar.gz"
  conf="./configure '--with-apxs2=/usr/sbin/apxs' '--prefix=/usr' '--mandir=/usr/share/man' '--infodir=/usr/share/info' '--sysconfdir=/private/etc' '--enable-cli' '--with-config-file-path=/etc' '--with-config-file-scan-dir=/Library/Server/Web/Config/php' '--with-libxml-dir=/usr' '--with-openssl=/usr/local/ssl' '--with-kerberos=/usr' '--with-zlib=/usr' '--enable-bcmath' '--with-bz2=/usr' '--enable-calendar' '--disable-cgi' '--with-curl=/usr' '--enable-dba' '--with-ndbm=/usr' '--enable-exif' '--enable-fpm' '--enable-ftp' '--with-icu-dir=/usr' '--with-ldap=/usr' '--with-ldap-sasl=/usr' '--with-libedit=/usr' '--enable-mbstring' '--enable-mbregex' '--with-mysqli=mysqlnd' '--without-pear' '--with-pear=no' '--with-pdo-mysql=mysqlnd' '--with-mysql-sock=/tmp/mysql.sock' '--with-readline=/usr' '--enable-shmop' '--with-snmp=/usr' '--enable-soap' '--enable-sockets' '--enable-sysvmsg' '--enable-sysvsem' '--enable-sysvshm' '--with-tidy' '--enable-wddx' '--with-xmlrpc' '--with-iconv-dir=/usr' '--with-xsl=/usr' '--enable-zip'"
  ;;
*)
  exit 1;
esac

echo ""
echo ""
echo -n "Do you want to install FFMPEG? (y/N):"
read -n 1 ffmpeg
echo ""
echo -n "Do you want to install icu4c/yasm? (y/N):"
read -n 1 yasm
echo ""
echo ""

echo "Decompressing packages needed for upgrade."
cd packages
tar -xzf openssl-1.0.1t.tar.gz
tar -xzf autoconf-2.69.tar.gz
tar -xzf libtool-2.4.6.tar.gz
tar -xzf freetype-2.5.5.tar.gz
tar -xzf jpegsrc.v6b.tar.gz
tar -xzf libgd-GD_2_0_33.tar.gz
tar -xzf libmcrypt-2.5.8.tar.gz
tar -xzf libpng-1.6.16.tar.gz
if [ $yasm == 'y' ]; then
tar -xzf icu4c-4-8-1.tgz 
tar -xzf yasm-1.3.0.tar.gz
fi
if [ $ffmpeg == 'y' ]; then
tar -xzf ffmpeg-2.8.5.tar.gz
fi
tar -xzf $php

echo "Installing OpenSSL 1.0.1t (for PHP compilation purposes and not OS X system use)"
cd openssl-1.0.1t
./Configure --openssldir=/usr/local/ssl darwin64-x86_64-cc no-ssl2 no-ssl3 enable-sha > ../../logs/openssl-configure.txt 2>&1
make clean > ../../logs/openssl-make-clean.txt 2>&1
make > ../../logs/openssl-make.txt 2>&1
make install > ../../logs/openssl-install.txt 2>&1

exit 1;

cd ../$php
configure = $($conf)
make clean
make
make install

cd ../libtool-2.4.6
./configure
make clean
make
make install

cd ../autoconf-2.69
./configure
make clean
make
make install

if [ $yasm == 'y' ]; then
cd ../icu4c-4-8-1/source
./configure
make clean
make
make install
cd ../
fi

cd ../freetype-2.5.5
./configure --enable-shared
make clean
make
make install

cd ../jpeg-6b
./configure --enable-shared --enable-static
ln -s /usr/local/bin/libtool libtool
mkdir -p /usr/local/man/man1
make clean
make
make install

cd ../libmcrypt-2.5.8
./configure --enable-shared
make clean
make
make install

cd ../libpng-1.6.16
./configure --enable-shared
make clean
make
make install

cd ../libgd-GD_2_0_33/src
./configure --enable-shared
make clean
make
make install

if [ $yasm == 'y' ]; then
cd ../../yasm-1.3.0
./configure
make clean
make
make install
fi

if [ $ffmpeg == 'y' ]; then
cd ../ffmpeg-2.8.3
./configure
make clean
make 
make install
fi

cd ../$php/ext/gd
phpize
./configure --with-jpeg-dir=/usr/local --with-freetype-dir=/usr/local --with-png-dir=/usr/local
make clean
make
make install

cd ../mcrypt
phpize
./configure
make clean
make
make install

if [ $yasm == 'y' ]; then
cd ../pcntl
phpize
./configure
make clean
make
make install

cd ../intl
phpize
./configure
make clean
make
make install
fi

echo "" > /Library/Server/Web/Config/php/extensions.ini
echo "extension=gd.so" >> /Library/Server/Web/Config/php/extensions.ini
echo "extension=mcrypt.so" >> /Library/Server/Web/Config/php/extensions.ini
if [ $yasm == 'y' ]; then
echo "extension=pcntl.so" >> /Library/Server/Web/Config/php/extensions.ini
echo "extension=intl.so" >> /Library/Server/Web/Config/php/extensions.ini
fi
echo "" >> /Library/Server/Web/Config/php/extensions.ini

