/* ----Strukturen-----*/

/* Datenbanken auf Server anzeigen */
#SHOW DATABASES; 

/* DB boo löschen, falls vorhanden*/
DROP DATABASE IF EXISTS boo;

/* Datenbank erzeugen, falls nicht vorhanden */
CREATE DATABASE IF NOT EXISTS boo;

/* Datenbank auswaehlen */
USE boo;

/* Tabelle anlegen, falls noch nicht vorhanden */ 
CREATE TABLE IF NOT EXISTS test 
(
    name VARCHAR(20),
    age INT 
); 


/* Struktur der Tabelle anzeigen*/
DESCRIBE test; 

/* ------ Daten -----*/
INSERT INTO test (name,age) VALUES("Grizabella",29);
INSERT INTO test (age,name) VALUES(35,"Alonzo");
INSERT INTO test VALUES();

/* Tabelleninhalt anzeigen */
SELECT * FROM test;

/* Tabelle test löschen, falls vorhaben */
DROP TABLE IF EXISTS test; 

SHOW TABLES;