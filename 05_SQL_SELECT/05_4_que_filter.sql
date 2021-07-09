/* QUERIES filtern mir WHERE */

USE boo;

-- Index

/*
    Eingrenzen/filtern WHERE 
    Eingrenzen/filtern WHERE
    Eingrenzen/filtern WHERE
    Eingrenzen/filtern WHERE
*/

-- Eingrenzen/Filtern WHERE & AND/OR etc.
SELECT
    ticker AS "SYMBOL",
    c_name "Unternehmen",
    CONCAT(sector," | ",industry) "Operations",
    price "Kurs in $",
    payouts "Zahlungen p.a.",
    dividend "Dividende"
FROM ccc_list
-- Einzeldaten / Stirngs
#WHERE sector = "Communication Services"
#ORDER BY price ASC #beginnend mit der günstigsen Aktie

-- Kombination durch AND / NOT
WHERE sector = "Communication Services" AND NOT industry =  "media"
ORDER BY industry ASC

LIMIT 20;







