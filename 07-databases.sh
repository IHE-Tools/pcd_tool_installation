#!/bin/sh

cat << EOF |  mysql -u pcduser -p
use mysql;
create schema if not exists pcd         character set 'utf8' collate 'utf8_bin';
create schema if not exists pcd_account character set 'utf8' collate 'utf8_bin';
SHOW DATABASES

EOF
