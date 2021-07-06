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
    Default-Werte eintragen
*/

/* Tabelle anlegen, falls noch nicht vorhanden */ 
CREATE TABLE IF NOT EXISTS boo.test 
(
    # Constraint UNIQUE --> keine Doppelten Namen
    id INT NOT NULL PRIMARY KEY,
    name VARCHAR(20) NOT NUll UNIQUE DEFAULT "TBA",
    age INT NOT NULL DEFAULT 0 
); 

/* Struktur der Tabelle anzeigen*/
DESCRIBE test; 

/* ------ Daten -----*/
INSERT INTO test (id,name,age) VALUES(1,"Grizabella",29);
INSERT INTO test (id,age,name) VALUES(2,35,"Alonzo");
INSERT INTO test (id,age,name) VALUES(3,35,"Alonzo");
INSERT INTO test (id,age,name) VALUES(4);
#INSERT INTO test VALUES();

# Doppelte Datensätze werden zugelassen! 
#INSERT INTO test (age,name) VALUES(35,"Big Alonzo");

/* Tabelleninhalt anzeigen */
SELECT * FROM test;

