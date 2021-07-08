/* QUERIES Basic */

USE boo;

/* 
Felder abfragen
Felder kombinieren
Ausgabe beschränken
*/

-- Abfrage allter Spalter der Tab 
#SELECT * FROM boo.ccc_list;

-- Begrenzung: 5 Zeilen ab 0
SELECT
    * 
FROM ccc_list
#LIMIT 5 # Zeilen von 1-5
#LIMIT 200,10 # 10 Zeilen ab 200 | nach ,wird hoch gezählt 
LIMIT 100,50
;