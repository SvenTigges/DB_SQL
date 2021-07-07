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
    user_name VARCHAR(20) NOT NUll,  
    first_name VARCHAR(20) NOT NUll,
    family_name VARCHAR(20) NOT NUll
);

DESCRIBE users;

/* Daten users */
INSERT INTO users(user_name,first_name,family_name) VALUES ("max","Max","Mütze"); 
INSERT INTO users(user_name,first_name,family_name) VALUES ("maxine","Maxine","Mütze");

/* Gleiche User-Namen werden zugelassen! */ 
INSERT INTO users(user_name,first_name,family_name) VALUES ("max","Max","Mützerich");

SELECT * FROM users; 