/* BD_creation */
DROP DATABASE IF EXISTS boo; 
CREATE DATABASE IF NOT EXISTS boo; 
USE boo;

/* Tabelle cats */
DROP TABLE IF EXISTS cats;

CREATE TABLE IF NOT EXISTS cats
(
    id INT NOT NULL PRIMARY KEY,
    name VARCHAR(20) NOT NUll,  
    fur_color VARCHAR(20) NOT NUll,
    age INT NOT NUll
);

DESCRIBE cats;

/* CSV Datei parsen */ 
LOAD DATA LOCAL INFILE "04_SQL_Dataimport/cats_export.csv"
INTO TABLE cats
FIELDS TERMINATED BY ";" 
LINES TERMINATED BY "\n"
IGNORE 1 ROWS;


SELECT * FROM cats;