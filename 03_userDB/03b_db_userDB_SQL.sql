/* USER DB Vers.1 */

/* BD */
DROP DATABASE IF EXISTS boo; 
CREATE DATABASE IF NOT EXISTS boo; 
USE boo;

/* Tabelle users */
DROP TABLE IF EXISTS users;

CREATE TABLE IF NOT EXISTS users
(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    user_name VARCHAR(20) UNIQUE NOT NUll, 
    user_pwd VARCHAR (40) NOT NULL,
    first_name VARCHAR(20) NOT NUll,
    family_name VARCHAR(20) NOT NUll
);

DESCRIBE users;

/* Daten - Nachteil: PWD offen Lesbar!
INSERT INTO users(user_name,user_pwd,first_name,family_name) VALUES ("max","1234","Max","Mütze"); 
INSERT INTO users(user_name,user_pwd,first_name,family_name) VALUES ("maxine","#7DxO","Maxine","Mütze");
INSERT INTO users(user_name,user_pwd,first_name,family_name) VALUES ("max2","user1234","Max","Mützerich");
*/

/* Besser PWD Verschlüsselt! */ 
INSERT INTO users(user_name,user_pwd,first_name,family_name) VALUES ("max",sha1("1234"),"Max","Mütze"); 
INSERT INTO users(user_name,user_pwd,first_name,family_name) VALUES ("maxine",sha1("#7DxO"),"Maxine","Mütze");
INSERT INTO users(user_name,user_pwd,first_name,family_name) VALUES ("max2",sha1("user1234"),"Max","Mützerich");

#SELECT * FROM users; 

/* Anderungen an bestehender Tabelle */ 
ALTER TABLE users ADD user_plz INT(5) NOT NULL DEFAULT 12345;
DESCRIBE users; 

UPDATE users SET user_plz = 70367 WHERE id = 1; 
UPDATE users SET user_plz = 63225 WHERE id = 2; 
UPDATE users SET user_plz = 65001 WHERE id = 3; 

SELECT * FROM users; 