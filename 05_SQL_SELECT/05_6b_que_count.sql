/*QUERIES - count ()*/

USE boo;

/* Links: 
    https://dev.mysql.com/doc/refman/5.6/en/counting-rows.html
    https://dev.mysql.com/doc/refman/5.6/en/group-by-handling.html
    https://dev.mysql.com/doc/refman/5.6/en/aggregate-functions.html#function_count-distinct
*/

/*
-- Welche VERSCHIEDENEN Sektoren ?
SELECT
    DISTINCT sector Industriesektoren
FROM ccc_list
ORDER BY sector ASC
;

-- Wieviele VERSCHIEDENE Sektoren ?
SELECT
    COUNT(DISTINCT sector) "Anzahl Sektoren"
FROM ccc_list
;
*/

/*
-- Welche VERSCHIEDENEN Branchen ?
SELECT
    DISTINCT industry Branchen
FROM ccc_list
ORDER BY sector ASC
;

-- Wieviele VERSCHIEDENE Branchen ?
SELECT
    COUNT(DISTINCT industry) Brachenzahl
FROM ccc_list
;
*/



-- Wie viel Verschiedene Branchen gibt es 
-- in den Jeweiligen Industiresektoren?ALTER
SELECT
    sector Industiesektoren, #NICHT aggregiert --> organischALTER
    COUNT(DISTINCT industry) Branchen #aggregiert --> durch Fkt. entstaden 
FROM ccc_list
#WHERE sector LIKE "Consumer%" # Filtern in NICHT aggr. Feldern 
GROUP BY sector # bei Kombination nicht aggr. /aggr.ALTER
HAVING Branchen > 10 -- Filter in aggr. Feldern / nach GROUP
ORDER BY Branchen DESC
;






