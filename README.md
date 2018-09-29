# php5-cygport
Initial-Source: https://github.com/cygwinports/php/tree/0b7fcc1bec8a681a687a1f7654c3ee58c6e86e70

This port can be installed parallel to the shipped php-version (possibly php7) of cygwin.  
It gets installed into `/opt/php5`.

### Howto Build & Install
```
./getDependencies

# If you have Oracle Instant Client.
# Version always needs to end with x.1, even if it is x.2
export ORACLE_INSTC=/path/to/instantclient_12_2
export ORACLE_VERSION=12.1

cygport php.cygport prep
cygport php.cygport compile
cygport php.cygport install

# i686-Build
mkdir /opt
cp -ar php-5.6.38-1.i686/inst/opt/* /opt/

# x86_64-Build
mkdir /opt
cp -ar php-5.6.38-1.x86_64/inst/opt/* /opt/

# Both
ln -s /opt/php5/usr/bin/php /usr/bin/php5
ln -s /opt/php5/usr/bin/phpize /usr/bin/phpize5
ln -s /opt/php5/etc/php5 /etc/php5

# If you have Oracle Instant Client.
vi /etc/profile.d/oracle.sh
   ------------------------------------------
   PATH=$PATH:/path/to/instantclient_12_2
   export PATH
   ------------------------------------------
```
