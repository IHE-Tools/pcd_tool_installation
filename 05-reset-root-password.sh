#!/bin/sh

sudo service mysql stop

sudo mysqld_safe --skip-grant-tables > /dev/null 2>&1 &

sleep 3

cat << EOF |  mysql -u root 
use mysql;
update user set password=password('pcdpassword') where user='root';
update user set host='%'			 where user='root';
update user set plugin='mysql_native_password'         where user='root';
flush privileges;
select host,user,plugin from user;
EOF

#sudo mysqladmin -u root -p shutdown
#
#sudo service mysql start

