#!/bin/bash
echo "---- startServices.sh ---> Configuring container enviroment"
# ======================== Preparing container ========================

# ============================== Cron =================================
# -- see scripts/export-db for cron task
# -- exports database dump data every 6 hours to db-data/cron-exports
service cron start

# ========================= MYSQL CONFIG ==============================

# -- set mysql ownership, group and permissions
chown -R mysql /var/lib/mysql
chgrp -R mysql /var/lib/mysql
chmod 755 /var/lib/mysql

# -- define mysql home directory (it's undefined for some reason on debian based distros)
usermod -d /var/lib/mysql/ mysql

# -- run mysql
service mysql start

# -- connect to mysql client and create database user
mysql -uroot -hlocalhost -P6603 <<END
CREATE USER 'newuser'@'%' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON * . * TO 'newuser'@'%';
END

# ============================= Hold Container ========================
# -- prevent the container from exiting
while true;do sleep 3600;done
