#!/bin/sh
mv /tmp/speedtest/*.html /var/www/html
mv /tmp/speedtest/*.js /var/www/html
mv /tmp/speedtest/*.ico /var/www/html
mv /tmp/speedtest/backend /var/www/html
mv /tmp/speedtest/.logo /var/www/html
mv /tmp/speedtest/results /var/www/html
rm -rf /tmp/speedtest
cd /var/www/html
chown -R 1000:1000 *
/usr/local/bin/apache2-foreground
