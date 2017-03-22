#!/usr/bin/env bash
if [[ $1 != -s ]]; then
	apt-get update
	apt-get install mysql-server
	mysql -u root -e "SET PASSWORD FOR 'root'@'localhost' = PASSWORD('yourpassword');"
	apt-get install apache2
	sudo apt-get install php libapache2-mod-php php-mcrypt php-mysql
	cp ./php.ini /etc/php/7.0/apache2/
	/etc/init.d/apache2 restart
else
	echo Skipping installation
fi 


# Database creation
echo Creating databases
mysql --user=root --password=root < ./sql/sql.sql &>/dev/null

# Copy files
echo Copying Files

cp -r ./www/* /var/www/

echo Done !