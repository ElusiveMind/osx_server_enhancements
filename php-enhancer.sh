#!/bin/bash

cd packages
tar -xzf openssl-0.9.8zg.tar.gz
tar -xzf autoconf-2.69.tar.gz
tar -xzf libtool-2.4.6.tar.gz
tar -xzf freetype-2.5.5.tar.gz
tar -xzf jpegsrc.v6b.tar.gz
tar -xzf libgd-GD_2_0_33.tar.gz
tar -xzf libmcrypt-2.5.8.tar.gz
tar -xzf libpng-1.6.16.tar.gz
tar -xzf php-5.5.30.tar.gz
tar -xzf icu4c-4-8-1.tgz 
tar -xzf yasm-1.3.0.tar.gz
tar -xzf ffmpeg-2.8.5.tar.gz

cd openssl-0.9.8zg
./Configure --openssldir=/usr/local/ssl darwin64-x86_64-cc no-ssl2 no-ssl3 enable-sha
make
make install

cd ../php-5.5.30
./configure '--prefix=/usr' '--mandir=/usr/share/man' '--infodir=/usr/share/info' '--sysconfdir=/private/etc' '--enable-cli' '--with-config-file-path=/etc' '--with-config-file-scan-dir=/Library/Server/Web/Config/php' '--with-libxml-dir=/usr' '--with-openssl=/usr/local/ssl' '--with-kerberos=/usr' '--with-zlib=/usr' '--enable-bcmath' '--with-bz2=/usr' '--enable-calendar' '--disable-cgi' '--with-curl=/usr' '--enable-dba' '--with-ndbm=/usr' '--enable-exif' '--enable-fpm' '--enable-ftp' '--with-icu-dir=/usr' '--with-ldap=/usr' '--with-ldap-sasl=/usr' '--with-libedit=/usr' '--enable-mbstring' '--enable-mbregex' '--with-mysql=mysqlnd' '--with-mysqli=mysqlnd' '--without-pear' '--with-pear=no' '--with-pdo-mysql=mysqlnd' '--with-mysql-sock=/tmp/mysql.sock' '--with-readline=/usr' '--enable-shmop' '--with-snmp=/usr' '--enable-soap' '--enable-sockets' '--enable-sysvmsg' '--enable-sysvsem' '--enable-sysvshm' '--with-tidy' '--enable-wddx' '--with-xmlrpc' '--with-iconv-dir=/usr' '--with-xsl=/usr' '--enable-zip' --with-apxs2=/usr/sbin/apxs 
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

cd ../icu4c-4-8-1/source
./configure
make clean
make
make install

cd ../../freetype-2.5.5
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

cd ../../yasm-1.3.0
./configure
make clean
make
make install

cd ../ffmpeg-2.5.3
./configure
make clean
make 
make install

cd ../php-5.5.30/ext/gd
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

echo "" > /Library/Server/Web/Config/php/extensions.ini
echo "extension=gd.so" >> /Library/Server/Web/Config/php/extensions.ini
echo "extension=mcrypt.so" >> /Library/Server/Web/Config/php/extensions.ini
echo "extension=pcntl.so" >> /Library/Server/Web/Config/php/extensions.ini
echo "extension=intl.so" >> /Library/Server/Web/Config/php/extensions.ini
echo "" >> /Library/Server/Web/Config/php/extensions.ini
