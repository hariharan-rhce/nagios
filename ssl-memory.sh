#!/bin/bash

yum install nagios-plugins-perl 

read -p 'Domain name: ' host

cd /usr/lib64/nagios/plugins/ |  https://assets.nagios.com/downloads/nagiosxi/scripts/custom_check_mem 

cd /usr/lib64/nagios/plugins/ |  wget https://raw.githubusercontent.com/hariharan-rhce/nagios/master/check_ssl_certificate

chmod 755 /usr/lib64/nagios/plugins/check_ssl_certificate
chmod 755/usr/lib64/nagios/plugins/custom_check_mem

cat <<EOT >> /etc/nagios/nrpe.cfg
command[check_ssl_certificate]=/usr/lib64/nagios/plugins/check_ssl_certificate -H $host -c 30 -w 60 -v
command[check_mem]=/usr/lib64/nagios/plugins/check_mem -w 80 -c 90
EOT
