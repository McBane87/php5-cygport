#!/bin/bash

# Download apt-cyg, if not existing
if [[ ! -x /tmp/apt-cyg && $(which apt-cyg >/dev/null 2>&1)$? -eq 1 ]]; then
	cd /tmp && wget https://raw.githubusercontent.com/transcode-open/apt-cyg/master/apt-cyg && chmod 755 /tmp/apt-cyg
fi

# Check again if apt-cyg is available
if [[ $(which apt-cyg >/dev/null 2>&1)$? -eq 0 ]]; then
	AC=$(which apt-cyg)
elif [[ -x /tmp/apt-cyg ]]; then
	AC=/tmp/apt-cyg
else
	echo "Error: Can't find /tmp/apt-cyg! Previous wget command possibly failed!"
	exit 1
fi

$AC install cygport
$AC install autoconf
$AC install automake
$AC install bash
$AC install binutils
$AC install bzip2
$AC install coreutils
$AC install diffstat
$AC install diffutils
$AC install dos2unix
$AC install file
$AC install gawk
$AC install grep
$AC install gzip
$AC install lftp
$AC install libtool
$AC install lndir
$AC install make
$AC install openssh
$AC install patch
$AC install rsync
$AC install sed
$AC install tar
$AC install unzip
$AC install util-linux
$AC install wget
$AC install which
$AC install xz

$AC install c-client
$AC install httpd-devel httpd
$AC install libapr1-devel libapr1
$AC install libaprutil1-devel libaprutil1
$AC install libaspell-devel libaspell15
$AC install libbz2-devel libbz2_1
$AC install libct4
$AC install libcurl-devel libcurl4
$AC install libdb-devel libdb5.3
$AC install libedit-devel libedit0
$AC install libenchant-devel libenchant1
$AC install libgd-devel libgd3
$AC install libgdbm-devel libgdbm4
$AC install libgmp-devel libgmp10
$AC install libiconv-devel libiconv
$AC install libicu-devel libicu62
$AC install libintl-devel libintl8
$AC install libiodbc-devel libiodbc2
$AC install libmcrypt-devel libmcrypt
$AC install libonig-devel libonig5
$AC install openldap-devel libopenldap2_4_2
$AC install openssl-devel libopenssl100
$AC install libpcre-devel libpcre1
$AC install libpq-devel libpq5
$AC install libsqlite3-devel libsqlite3_0
$AC install libsybdb-devel libsybdb5
$AC install libtidy-devel libtidy0_99_0
$AC install libxml2-devel libxml2
$AC install libXpm-devel libXpm4
$AC install libxslt-devel libxslt
$AC install libzip-devel libzip
$AC install net-snmp-devel net-snmp-libs
$AC install net-snmp-utils
$AC install recode
$AC install t1lib-devel t1lib
