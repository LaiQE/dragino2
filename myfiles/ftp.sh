#!/bin/sh
ftp -v -n ecoo.top 8021<<EOF
user root admin
binary
cd /mnt/sda1/files
lcd ./artifact/firmware
prompt
passive
mput *
bye
EOF
echo "commit to ftp successfully"
