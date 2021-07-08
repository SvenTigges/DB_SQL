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
/*
SELECT
    * 
FROM ccc_list
#LIMIT 5 # Zeilen von 1-5
#LIMIT 200,10 # 10 Zeilen ab 200 | nach ,wird hoch gezählt 
LIMIT 100,50
;
*/

-- Abfrage eines Feldes oder einer Feld-Komni (rwos 1-10)
/*
SELECT
    ticker,
    c_name,
    industry
FROM 
    ccc_list
limit 5;
*/

-- Abfrage eines Feldes oder einer Feld-Kombi m. Umbenennung (Alias)
/*
SELECT
    Ticker AS "SYM",
    c_name AS "Unternehmen",
    price AS "Kurs in $"
FROM ccc_list
LIMIT 10
; 
*/

-- Kombination aus mehreren Feldern in neues Feld
-- hier mit Verknüpfung CONCAT() // String-Fkt.
SELECT
    ticker AS SYM,
    c_name AS "Unternehmen",
    CONCAT(sector," | ", industry) AS "Operations"
FROM ccc_list
LIMIT 5;
    






