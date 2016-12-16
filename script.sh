#!/bin/bash
chown -R smokeping:www-data /var/lib/smokeping
chmod -R 777 /var/lib/smokeping
cd /etc/apache2/conf-available && a2enconf smokeping && a2enmod cgid
/usr/sbin/apache2ctl start
/usr/sbin/smokeping --nodaemon
