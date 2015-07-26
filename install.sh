#!/bin/bash
yum -y update
yum -y install httpd
cat <<EOF > /var/www/index.html
<html><body><h1>Hello World</h1>
<p>This page was created from a simple startup script!</p>
</body></html>
EOF
systemctl start httpd.service
