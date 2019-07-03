#!/bin/bash

yum install nagios-plugins-perl 

read -p 'Domain name: ' host

cd /usr/lib64/nagios/plugins/ |  wget https://raw.githubusercontent.com/hariharan-rhce/Logrotate/master/apache

cd /usr/lib64/nagios/plugins/ |  wget https://raw.githubusercontent.com/hariharan-rhce/Logrotate/master/apache


cat <<EOT >> /etc/nagios/nrpe.cfg
command[check_ssl_certificate]=/usr/lib64/nagios/plugins/check_ssl_certificate -H $host -c 30 -w 60 -v
command[check_mem]=/usr/lib64/nagios/plugins/check_mem -w 80 -c 90
EOT
