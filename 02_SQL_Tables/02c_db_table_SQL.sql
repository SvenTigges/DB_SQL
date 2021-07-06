/* ----Strukturen-----*/


/* DB boo lÖschen, falls vorhanden*/
DROP DATABASE IF EXISTS boo;

/* Datenbank erzeugen, falls nicht vorhanden */
CREATE DATABASE IF NOT EXISTS boo;

/* Datenbank auswaehlen */
USE boo;

/* Tabelle test lÖschen, falls vorhaben */
DROP TABLE IF EXISTS boo.test; 

/* 	 
	Tabelle mit id als PRIMARY KEY --> Keine Duplikate möglich
    AUTO_INCREMENT ++ 
    Default-Werte eintragen
*/

/* Tabelle anlegen, falls noch nicht vorhanden */ 
CREATE TABLE IF NOT EXISTS boo.test 
(
    # Constraint UNIQUE --> keine Doppelten Namen
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(20) NOT NUll  DEFAULT "TBA",
    age INT NOT NULL DEFAULT 0 
); 

/* Struktur der Tabelle anzeigen*/
DESCRIBE test; 

/* ------ Daten -----*/
INSERT INTO test (name,age) VALUES("Grizabella",29);
INSERT INTO test (name,age) VALUES("Gus",45);
INSERT INTO test (age,name) VALUES(35,"Alonzo");
INSERT INTO test (age,name) VALUES(35,"Alonzo");
INSERT INTO test VALUES();

# Doppelte Datensätze werden zugelassen! 
#INSERT INTO test (age,name) VALUES(35,"Big Alonzo");

/* Tabelleninhalt anzeigen */
SELECT * FROM test;

