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
echo "Please be sure you have installed OS X Server from Apple before"
echo "running this installer as there are dependent components in there"
echo "for successful execution."
echo ""
echo "Which version of PHP do you wish to install?"
echo "--------------------------------------------"
echo " 1. PHP 5.5.27 - Yoesmite 10.5.5 / El Capitain 10.11.0"
echo " 2. PHP 5.5.29 - Yoesmite 10.5.5 / El Capitain 10.11.1"
echo " 3. PHP 5.5.30 - El Capitain 10.11.2"
echo " 4. PHP 5.5.31 - El Capitain 10.11.4"
echo " 5. PHP 5.5.34 - El Capitain 10.11.5"
echo " 6. PHP 7.0.7 - experimental"
echo " 7. Exit"
read version

case $version in
[1]*)
  php="php-5.5.27.tar.gz"
  php_dir="php-5.5.27"
  conf="./configure --with-apxs2=/usr/sbin/apxs --prefix=/usr --mandir=/usr/share/man --infodir=/usr/share/info --sysconfdir=/private/etc --enable-cli --with-config-file-path=/etc --with-config-file-scan-dir=/Library/Server/Web/Config/php --with-libxml-dir=/usr --with-openssl=/usr/local/ssl --with-kerberos=/usr --with-zlib=/usr --enable-bcmath --with-bz2=/usr --enable-calendar --disable-cgi --with-curl=/usr --enable-dba --with-ndbm=/usr --enable-exif --enable-fpm --enable-ftp --with-icu-dir=/usr --with-ldap=/usr --with-ldap-sasl=/usr --with-libedit=/usr --enable-mbstring --enable-mbregex --with-mysql=mysqlnd --with-mysqli=mysqlnd --without-pear --with-pear=no --with-pdo-mysql=mysqlnd --with-mysql-sock=/tmp/mysql.sock --with-readline=/usr --enable-shmop --with-snmp=/usr --enable-soap --enable-sockets --enable-sysvmsg --enable-sysvsem --enable-sysvshm --with-tidy --enable-wddx --with-xmlrpc --with-iconv-dir=/usr --with-xsl=/usr --enable-zip"
  ;;
[2]*)
  php="php-5.5.29.tar.gz"
  php_dir="php-5.5.29"
  conf="./configure --with-apxs2=/usr/sbin/apxs --prefix=/usr --mandir=/usr/share/man --infodir=/usr/share/info --sysconfdir=/private/etc --enable-cli --with-config-file-path=/etc --with-config-file-scan-dir=/Library/Server/Web/Config/php --with-libxml-dir=/usr --with-openssl=/usr/local/ssl --with-kerberos=/usr --with-zlib=/usr --enable-bcmath --with-bz2=/usr --enable-calendar --disable-cgi --with-curl=/usr --enable-dba --with-ndbm=/usr --enable-exif --enable-fpm --enable-ftp --with-icu-dir=/usr --with-ldap=/usr --with-ldap-sasl=/usr --with-libedit=/usr --enable-mbstring --enable-mbregex --with-mysql=mysqlnd --with-mysqli=mysqlnd --without-pear --with-pear=no --with-pdo-mysql=mysqlnd --with-mysql-sock=/tmp/mysql.sock --with-readline=/usr --enable-shmop --with-snmp=/usr --enable-soap --enable-sockets --enable-sysvmsg --enable-sysvsem --enable-sysvshm --with-tidy --enable-wddx --with-xmlrpc --with-iconv-dir=/usr --with-xsl=/usr --enable-zip"
  ;;
[3]*)
  php="php-5.5.30.tar.gz"
  php_dir="php-5.5.30"
  conf="./configure --prefix=/usr --mandir=/usr/share/man --infodir=/usr/share/info --sysconfdir=/private/etc --enable-cli --with-config-file-path=/etc --with-config-file-scan-dir=/Library/Server/Web/Config/php --with-libxml-dir=/usr --with-openssl=/usr/local/ssl --with-kerberos=/usr --with-zlib=/usr --enable-bcmath --with-bz2=/usr --enable-calendar --disable-cgi --with-curl=/usr --enable-dba --with-ndbm=/usr --enable-exif --enable-fpm --enable-ftp --with-icu-dir=/usr --with-ldap=/usr --with-ldap-sasl=/usr --with-libedit=/usr --enable-mbstring --enable-mbregex --with-mysql=mysqlnd --with-mysqli=mysqlnd --without-pear --with-pear=no --with-pdo-mysql=mysqlnd --with-mysql-sock=/tmp/mysql.sock --with-readline=/usr --enable-shmop --with-snmp=/usr --enable-soap --enable-sockets --enable-sysvmsg --enable-sysvsem --enable-sysvshm --with-tidy --enable-wddx --with-xmlrpc --with-iconv-dir=/usr --with-xsl=/usr --enable-zip --with-apxs2=/usr/sbin/apxs"
  ;;
[4]*)
  php="php-5.5.31.tar.gz"
  php_dir="php-5.5.31"
  conf="./configure --prefix=/usr --mandir=/usr/share/man --infodir=/usr/share/info --sysconfdir=/private/etc --enable-cli --with-config-file-path=/etc --with-config-file-scan-dir=/Library/Server/Web/Config/php --with-libxml-dir=/usr --with-openssl=/usr/local/ssl --with-kerberos=/usr --with-zlib=/usr --enable-bcmath --with-bz2=/usr --enable-calendar --disable-cgi --with-curl=/usr --enable-dba --with-ndbm=/usr --enable-exif --enable-fpm --enable-ftp --with-icu-dir=/usr --with-ldap=/usr --with-ldap-sasl=/usr --with-libedit=/usr --enable-mbstring --enable-mbregex --with-mysql=mysqlnd --with-mysqli=mysqlnd --without-pear --with-pear=no --with-pdo-mysql=mysqlnd --with-mysql-sock=/tmp/mysql.sock --with-readline=/usr --enable-shmop --with-snmp=/usr --enable-soap --enable-sockets --enable-sysvmsg --enable-sysvsem --enable-sysvshm --with-tidy --enable-wddx --with-xmlrpc --with-iconv-dir=/usr --with-xsl=/usr --enable-zip --with-apxs2=/usr/sbin/apxs"
  ;;
[5]*)
  php="php-5.5.34.tar.gz"
  php_dir="php-5.5.34"
  conf="./configure --prefix=/usr --mandir=/usr/share/man --infodir=/usr/share/info --sysconfdir=/private/etc --enable-cli --with-config-file-path=/etc --with-config-file-scan-dir=/Library/Server/Web/Config/php --with-libxml-dir=/usr --with-openssl=/usr/local/ssl --with-kerberos=/usr --with-zlib=/usr --enable-bcmath --with-bz2=/usr --enable-calendar --disable-cgi --with-curl=/usr --enable-dba --with-ndbm=/usr --enable-exif --enable-fpm --enable-ftp --with-icu-dir=/usr --with-ldap=/usr --with-ldap-sasl=/usr --with-libedit=/usr --enable-mbstring --enable-mbregex --with-mysql=mysqlnd --with-mysqli=mysqlnd --without-pear --with-pear=no --with-pdo-mysql=mysqlnd --with-mysql-sock=/tmp/mysql.sock --with-readline=/usr --enable-shmop --with-snmp=/usr --enable-soap --enable-sockets --enable-sysvmsg --enable-sysvsem --enable-sysvshm --with-tidy --enable-wddx --with-xmlrpc --with-iconv-dir=/usr --with-xsl=/usr --enable-zip --with-apxs2=/usr/sbin/apxs"
  ;;
[6]*)
  php="php-7.0.7.tar.gz"
  php_dir="php-7.0.7"
  conf="./configure --with-apxs2=/usr/sbin/apxs --prefix=/usr --mandir=/usr/share/man --infodir=/usr/share/info --sysconfdir=/private/etc --enable-cli --with-config-file-path=/etc --with-config-file-scan-dir=/Library/Server/Web/Config/php --with-libxml-dir=/usr --with-openssl=/usr --with-kerberos=/usr --with-zlib=/usr --enable-bcmath --with-bz2=/usr --enable-calendar --disable-cgi --with-curl=/usr --enable-dba --with-ndbm=/usr --enable-exif --enable-fpm --enable-ftp --with-icu-dir=/usr --with-ldap=/usr --with-ldap-sasl=/usr --with-libedit=/usr --enable-mbstring --enable-mbregex --with-mysqli=mysqlnd --without-pear --with-pear=no --with-pdo-mysql=mysqlnd --with-mysql-sock=/tmp/mysql.sock --with-readline=/usr --enable-shmop --with-snmp=/usr --enable-soap --enable-sockets --enable-sysvmsg --enable-sysvsem --enable-sysvshm --with-tidy --enable-wddx --with-xmlrpc --with-iconv-dir=/usr --with-xsl=/usr --enable-zip"
  ;;
*)
  exit 1;
esac

echo -n "Do you want to install FFMPEG? (y/N):"
read -n 1 ffmpeg
echo ""
echo -n "Do you want to install icu4c/yasm? (y/N):"
read -n 1 yasm
echo ""

echo "Decompressing packages needed for upgrade."
cd packages
#tar -xzf openssl-1.0.1t.tar.gz
tar -xzf libressl-2.4.0.tar.gz
tar -xzf autoconf-2.69.tar.gz
tar -xzf libtool-2.4.6.tar.gz
tar -xzf freetype-2.5.5.tar.gz
tar -xzf jpegsrc.v6b.tar.gz
tar -xzf libgd-GD_2_0_33.tar.gz
tar -xzf libmcrypt-2.5.8.tar.gz
tar -xzf libpng-1.6.16.tar.gz
tar -xzf bison-2.7.tar.gz
tar -zxf re2c-0.16.tar.gz
if [ $yasm == 'y' ]; then
tar -xzf icu4c-4-8-1.tgz 
tar -xzf yasm-1.3.0.tar.gz
fi
if [ $ffmpeg == 'y' ]; then
tar -xzf ffmpeg-2.8.5.tar.gz
fi
tar -xzf $php

echo "Installing LibreSSL 2.4.0"
cd libressl-2.4.0
./configure > ../../logs/libressl-configure.txt 2>&1
make clean > ../../logs/libressl-make-clean.txt 2>&1
make > ../../logs/libressl-make.txt 2>&1
make install > ../../logs/libressl-install.txt 2>&1

#echo "Installing OpenSSL 1.0.1t"
#cd openssl-1.0.1t
#./Configure --openssldir=/usr darwin64-x86_64-cc no-ssl2 no-ssl3 enable-tls1 enable-tls12 enable-sha shared > ../../logs/openssl-configure.txt 2>&1
#make clean > ../../logs/openssl-make-clean.txt 2>&1
#make > ../../logs/openssl-make.txt 2>&1
#make install > ../../logs/openssl-install.txt 2>&1

echo "Installing bison 2.7"
cd ../bison-2.7
./configure > ../../logs/bison-configure.txt 2>&1
make clean > ../../logs/bison-make-clean.txt 2>&1
make > ../../logs/bison-make.txt 2>&1
make install > ../../logs/bison-install.txt 2>&1

echo "Installing re2c-0.16"
cd ../re2c-0.16
./configure > ../../logs/re2c-configure.txt 2>&1
make clean > ../../logs/re2c-make-clean.txt 2>&1
make > ../../logs/re2c-make.txt 2>&1
make install > ../../logs/re2c-install.txt 2>&1

echo "Installing $php_dir"
cd ../$php_dir
configure = $($conf) > ../../logs/php-configure.txt 2>&1
make clean > ../../logs/php-make-clean.txt
make > ../../logs/php-make.txt 2>&1
make install > ../../logs/php-make-install.txt 2>&1

echo "Installing libtool 2.4.6"
cd ../libtool-2.4.6
./configure > ../../logs/libtool-configure.txt 2>&1
make clean > ../../logs/libtool-make-clean.txt 2>&1
make > ../../logs/libtool-make.txt 2>&1
make install > ../../logs/libtool-install.txt 2>&1

echo "Installing autoconf 2.69"
cd ../autoconf-2.69
./configure > ../../logs/autoconf-configure.txt 2>&1
make clean > ../../logs/autoconf-clean.txt 2>&1
make > ../../logs/autoconf-make.txt 2>&1
make install > ../../logs/autoconf-install.txt 2>&1

if [ $yasm == 'y' ]; then
echo "Installing icu4c 4-8-1"
cd ../icu4c-4-8-1/source
./configure > ../../../logs/icu4c-configure.txt 2>&1
make clean > ../../../logs/icu4c-make-clean.txt 2>&1
make > ../../../logs/icu4c-make.txt 2>&1
make install > ../../../logs/icu4c-make-install.txt 2>&1
cd ../
fi

echo "Installing freetype 2.5.5"
cd ../freetype-2.5.5
./configure --enable-shared > ../../logs/freetype-configure.txt 2>&1
make clean > ../../logs/freetype-make-clean.txt 2>&1
make > ../../logs/freetype-make.txt 2>&1
make install > ../../logs/freetype-make-install.txt 2>&1 

echo "Installing JPEG 6b"
cd ../jpeg-6b
./configure --enable-shared --enable-static > ../../logs/jpeg-configure.txt 2>&1
ln -s /usr/local/bin/libtool libtool 
mkdir -p /usr/local/man/man1 
make clean > ../../logs/jpeg-make-clean.txt 2>&1
make > ../../logs/jpeg-make.txt 2>&1
make install > ../../logs/jpeg-make-install.txt 2>&1

echo "Installing libmcrypt 2.5.8"
cd ../libmcrypt-2.5.8
./configure --enable-shared > ../../logs/mcrypt-configure.txt 2>&1
make clean > ../../logs/mcrypt-make-clean.txt 2>&1
make > ../../logs/mcrypt-make.txt 2>&1
make install > ../../logs/mcrypt-make-install.txt 2>&1 

echo "Installing libpng 1.6.16"
cd ../libpng-1.6.16
./configure --enable-shared > ../../logs/libpng-configure.txt 2>&1
make clean > ../../logs/libpng-make-clean.txt 2>&1
make > ../../logs/libpng-make.txt 2>&1
make install > ../../logs/libpng-make-install.txt 2>&1

echo "Installing libgd 2.0.33"
cd ../libgd-GD_2_0_33/src
./configure --enable-shared > ../../../logs/libgd-configure.txt 2>&1
make clean > ../../../logs/libgd-make-clean.txt 2>&1
make > ../../../logs/libgd-make.txt 2>&1
make install > ../../../logs/libgd-make-install.txt 2>&1
cd ../

if [ $yasm == 'y' ]; then
echo "Installing yasm 1.3.0"
cd ../yasm-1.3.0
./configure > ../../logs/yasm-configure.txt 2>&1
make clean > ../../logs/yasm-make-clean.txt 2>&1
make > ../../logs/yasm-make.txt 2>&1
make install > ../../logs/yasm-make-install.txt 2>&1
fi
 
if [ $ffmpeg == 'y' ]; then
echo "Installing ffmpeg 2.8.3"
cd ../ffmpeg-2.8.3
./configure > ../../logs/ffmpeg-configure.txt 2>&1
make clean > ../../logs/ffmpeg-make-clean.txt 2>&1
make > ../../logs/ffmpeg-make.txt 2>&1
make install > ../../logs/ffmpeg-make-install.txt 2>&1
fi

echo "Installing PHP Extensions"
echo "GD"
cd ../$php_dir/ext/gd
phpize > ../../../../logs/php-gd-phpize.txt 2>&1
./configure --with-jpeg-dir=/usr/local --with-freetype-dir=/usr/local --with-png-dir=/usr/local > ../../../../logs/php-gd-configure.txt 2>&1
make clean > ../../../../logs/php-gd-make-clean.txt 2>&1
make > ../../../../logs/php-gd-make.txt 2>&1
make install > ../../../../logs/php-gd-make-install.txt 2>&1

echo "mcrypt"
cd ../mcrypt
phpize > ../../../../logs/php-mcrypt-phpize.txt 2>&1
./configure > ../../../../logs/php-mcrypt-configure.txt 2>&1
make clean > ../../../../logs/php-mcrypt-make-clean.txt 2>&1
make > ../../../../logs/php-mcrypt-make.txt 2>&1
make install > ../../../../logs/php-mcrypt-make-install.txt 2>&1

echo "pcntl"
cd ../pcntl
phpize > ../../../../logs/php-pcntl-phpize.txt 2>&1
./configure > ../../../../logs/php-pcntl-configure.txt 2>&1
make clean > ../../../../logs/php-pcntl-make-clean.txt 2>&1
make > ../../../../logs/php-pcntl-make.txt 2>&1
make install > ../../../../logs/php-pcntl-make-install.txt 2>&1

if [ $yasm == 'y' ]; then
echo "intl"
cd ../intl
phpize > ../../../../logs/php-intl-phpize.txt 2>&1
./configure > ../../../../logs/php-intl-configure.txt 2>&1
make clean > ../../../../logs/php-intl-make-clean.txt 2>&1
make > ../../../../logs/php-intl-make.txt 2>&1
make install > ../../../../logs/php-intl-make-install.txt 2>&1
fi

cd ../../../../

echo ""
echo "Configuring web server exitensions."
echo "" > /Library/Server/Web/Config/php/extensions.ini
echo "extension=gd.so" >> /Library/Server/Web/Config/php/extensions.ini
echo "extension=mcrypt.so" >> /Library/Server/Web/Config/php/extensions.ini
echo "extension=pcntl.so" >> /Library/Server/Web/Config/php/extensions.ini
if [ $yasm == 'y' ]; then
echo "extension=intl.so" >> /Library/Server/Web/Config/php/extensions.ini
fi
echo "" >> /Library/Server/Web/Config/php/extensions.ini

echo "Complete."
echo ""
echo ""
