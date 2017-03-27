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

DROP USER IF EXISTS 'userdb1'@'localhost';
CREATE USER 'userdb1'@'localhost' IDENTIFIED BY 'passdb1';
#REVOKE USAGE ON *.* FROM 'userdb1'@'localhost';
GRANT SELECT ON db1.* TO 'userdb1'@'localhost';


# SEARCH
DROP DATABASE IF EXISTS dbsearch1;
create database dbsearch1;

use dbsearch1;

create table articles (	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
			title TEXT CHARACTER SET utf8 COLLATE utf8_bin,
			content TEXT CHARACTER SET utf8 COLLATE utf8_bin);

create table users (	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
			username CHAR(40) CHARACTER SET utf8 COLLATE utf8_bin,
			password CHAR(40) CHARACTER SET utf8 COLLATE utf8_bin);

INSERT INTO articles (title, content) VALUES ("Hacking intensifies", "I had enough of these mohter**** hacks in my mother**** site !");
INSERT INTO articles (title, content) VALUES ("Passwords", "Please change all your passwords now ! At least 1 special character and 3 Greek letters are needed now.");
INSERT INTO articles (title, content) VALUES ("Lorem Ipsum", "Please Please ignore that ...");


INSERT INTO users (username, password) VALUES ( 'bob', 'pa$$word' );
INSERT INTO users (username, password) VALUES ( 'admin', 'Il0ve4ppl3$' );
INSERT INTO users (username, password) VALUES ( 'alice', '123456' );
INSERT INTO users (username, password) VALUES ( 'charles', 'NeverGonnaGiveYouUp' );


DROP USER IF EXISTS 'userdbsearch1'@'localhost';
CREATE USER 'userdbsearch1'@'localhost' IDENTIFIED BY 'passdbsearch1';
#REVOKE USAGE ON *.* FROM 'userdb1'@'localhost';
GRANT SELECT ON dbsearch1.* TO 'userdbsearch1'@'localhost';

# SEARCH 2
DROP DATABASE IF EXISTS dbsearch2;
create database dbsearch2;

use dbsearch2;

create table articles (	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
			title TEXT CHARACTER SET utf8 COLLATE utf8_bin,
			content TEXT CHARACTER SET utf8 COLLATE utf8_bin);

create table users (	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
			username CHAR(40) CHARACTER SET utf8 COLLATE utf8_bin,
			password CHAR(40) CHARACTER SET utf8 COLLATE utf8_bin);

INSERT INTO articles (title, content) VALUES ("Hacking intensifies even more", "Nothing to say");
INSERT INTO articles (title, content) VALUES ("Website update", "Hacking is prohibited. Violators will be shot. Survivors will be shot again.");
INSERT INTO articles (title, content) VALUES ("Lorem Ipsum", "Please Please ignore that ...");


INSERT INTO users (username, password) VALUES ( 'bob', 'b4af804009cb036a4ccdc33431ef9ac9' ); -- password = pass1234
INSERT INTO users (username, password) VALUES ( 'admin', '21232f297a57a5a743894a0e4a801fc3' ); -- password = admin
INSERT INTO users (username, password) VALUES ( 'alice', 'e10adc3949ba59abbe56e057f20f883e' ); -- password = 123456
INSERT INTO users (username, password) VALUES ( 'charles', '5f4dcc3b5aa765d61d8327deb882cf99' ); -- password = password


DROP USER IF EXISTS 'userdbsearch2'@'localhost';
CREATE USER 'userdbsearch2'@'localhost' IDENTIFIED BY 'passdbsearch2';
#REVOKE USAGE ON *.* FROM 'userdb2'@'localhost';
GRANT SELECT ON dbsearch2.* TO 'userdbsearch2'@'localhost';


# SOLUTIONS CHECK

DROP DATABASE IF EXISTS solutions;
create database solutions;
use solutions;
create table solutions (	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
			name CHAR(20) CHARACTER SET utf8 COLLATE utf8_bin,
			password CHAR(20) CHARACTER SET utf8 COLLATE utf8_bin);

INSERT INTO solutions (name, password) VALUES ( 'Login 1', 'haXxX0r123' );
INSERT INTO solutions (name, password) VALUES ( 'Search 1', 'Il0ve4ppl3$' );

DROP USER IF EXISTS 'usersolu'@'localhost';
CREATE USER 'usersolu'@'localhost' IDENTIFIED BY 'passsolu';
GRANT SELECT ON solutions.* TO 'usersolu'@'localhost';
