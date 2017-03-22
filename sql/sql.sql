DROP DATABASE IF EXISTS db1;
create database db1;
use db1;
create table login (	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
			username CHAR(20) CHARACTER SET utf8 COLLATE utf8_bin,
			password CHAR(20) CHARACTER SET utf8 COLLATE utf8_bin);

INSERT INTO login (username, password) VALUES ( 'bob', 'pa$$word' );
SELECT * FROM login;

DROP USER 'userdb1'@'localhost';
CREATE USER 'userdb1'@'localhost' IDENTIFIED BY 'passdb1';
#REVOKE USAGE ON *.* FROM 'userdb1'@'localhost';
GRANT SELECT ON db1.* TO 'userdb1'@'localhost';
