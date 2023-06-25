#!/bin/bash
yum update -y
yum install httpd -y
chkconfig httpd on
systemctl start httpd
systemctl enable httpd
echo "<h1>Hello Pranay from $(hostname -f)</h1>" > /var/www/html/index.html