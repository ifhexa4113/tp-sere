DROP DATABASE IF EXISTS db1;
create database db1;
use db1;
create table login (	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
			username CHAR(40) CHARACTER SET utf8 COLLATE utf8_bin,
			password CHAR(40) CHARACTER SET utf8 COLLATE utf8_bin);

INSERT INTO login (username, password) VALUES ( 'bob', 'pa$$word' );
INSERT INTO login (username, password) VALUES ( 'admin', 'haXxX0r123' );
INSERT INTO login (username, password) VALUES ( 'alice', '123456' );
INSERT INTO login (username, password) VALUES ( 'charles', 'cantHackMe1234' );
SELECT * FROM login;


# SEARCH
DROP DATABASE IF EXISTS dbsearch1;
create database dbsearch1;

create table articles (	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
			title TEXT CHARACTER SET utf8 COLLATE utf8_bin,
			content TEXT CHARACTER SET utf8 COLLATE utf8_bin);

create table users (	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
			username CHAR(40) CHARACTER SET utf8 COLLATE utf8_bin,
			password CHAR(40) CHARACTER SET utf8 COLLATE utf8_bin);

INSERT INTO articles (title, content) VALUES ("Hacking intensifies", "I had enough of these mohter**** hacks in my mother**** site !");
INSERT INTO articles (title, content) VALUES ("Passwords", "Please change all your passwords now ! At least 1 special character and 3 Greek letters are needed now.");
INSERT INTO articles (title, content) VALUES ("Lorem Ipsum", "Please Please ignore that ...");


INSERT INTO login (username, password) VALUES ( 'bob', 'pa$$word' );
INSERT INTO login (username, password) VALUES ( 'admin', 'Il0ve4ppl3$' );
INSERT INTO login (username, password) VALUES ( 'alice', '123456' );
INSERT INTO login (username, password) VALUES ( 'charles', 'NeverGonnaGiveYouUp' );


DROP USER IF EXISTS 'userdbsearch1'@'localhost';
CREATE USER 'userdbsearch1'@'localhost' IDENTIFIED BY 'passdbsearch1';
#REVOKE USAGE ON *.* FROM 'userdb1'@'localhost';
GRANT SELECT ON dbsearch1.* TO 'userdbsearch1'@'localhost';


# SOLUTIONS CHECK

DROP DATABASE IF EXISTS solutions;
create database solutions;
use solutions;
create table solutions (	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
			name CHAR(20) CHARACTER SET utf8 COLLATE utf8_bin,
			password CHAR(20) CHARACTER SET utf8 COLLATE utf8_bin);

INSERT INTO solutions (name, password) VALUES ( 'Login 1', 'haXxX0r123' );

DROP USER IF EXISTS 'usersolu'@'localhost';
CREATE USER 'usersolu'@'localhost' IDENTIFIED BY 'passsolu';
GRANT SELECT ON solutions.* TO 'usersolu'@'localhost';