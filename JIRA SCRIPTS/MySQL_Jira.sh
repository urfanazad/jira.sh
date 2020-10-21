#Tutorial Jira - MySQL Installation on Ubuntu Linux
#Install the MySQL database service.
apt-get install mysql-server mysql-client
#Download the MySQL Java connector.
mkdir /downloads/mysql -p
cd /downloads/mysql
wget https://cdn.mysql.com//Downloads/Connector-J/mysql-connector-java-5.1.48.tar.gz
tar -zxvf mysql-connector-java-5.1.48.tar.gz
#Edit the mysqld.cnf configuration file.
[mysqld]
default-storage-engine=INNODB
innodb_default_row_format=DYNAMIC
innodb_large_prefix=ON
innodb_file_format=Barracuda
innodb_log_file_size=2G
character_set_server=utf8mb4
collation-server=utf8mb4_bin
max_allowed_packet=256M
transaction-isolation=READ-COMMITTED
binlog_format=row #(need to configure this bit)
#Restart the MySQL service.
service mysql restart
Access the MySQL service command-line.
mysql -u root -p #(choose)
#Create a database named jira.
CREATE DATABASE jira CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
#Create a database user account named jira
CREATE USER 'jira'@'%' IDENTIFIED BY 'password123';
#In our example, the password is password123 was set to the user named jira.
#Give the MySQL user named jira permission over the database named jira.
GRANT ALL PRIVILEGES ON jira.* TO 'jira'@'%';
quit;
You have finished the MySQL installation required by Jira.







