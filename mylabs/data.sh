#!/bin/bash -ex
yum -y update
yum -y install httpd php mysql php-mysql
chkconfig httpd on
service httpd start
cd /var/www/html
wget https://tntdemo.s3.us-west-2.amazonaws.com/app.tgz
tar xvfz app.tgz
chown apache:root /var/www/html/rds.conf.php
