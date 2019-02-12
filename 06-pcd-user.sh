#!/bin/sh

cat << EOF |  mysql -u root -p
use mysql;
create user 'pcduser' identified by 'pcdpassword';
update user set plugin='mysql_native_password'		where user='pcduser';
update user set host='%'				where user='pcduser';
grant all privileges on *.* to 'pcduser' with grant option;
flush privileges;
select host,user,plugin from user;
EOF
