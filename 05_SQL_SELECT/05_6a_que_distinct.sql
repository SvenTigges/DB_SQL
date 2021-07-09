/*QUERIS - DISTINCT*/

/*
-- alle Sektoren 
SELECT 
    sector 
FROM ccc_list
ORDER BY sector ASC
LIMIT 20; 
*/

-- nur das erste Auftreten von Sektoren
-- welche VERSCHIEDENE Sektoren gibt es? 
/*
SELECT 
    DISTINCT sector Industriesektoren
FROM ccc_list
ORDER BY sector ASC
#LIMIT 20; 
*/
/*
-- welche VERSCHIEDENEN Branchen gibt es?ALTER
SELECT 
    DISTINCT industry Branche
FROM ccc_list
ORDER BY sector ASC;
*/
-- wleche VERSCHIEDENEN Auszahlungs-Rhytmen gibt es?
SELECT 
    DISTINCT payouts "Auszahlungen p.a."
FROM ccc_list
ORDER BY sector ASC;

-- Welche Unternehmen zahlen montalich?
SELECT
    c_name Unternehmen,
    industry Branche
FROM ccc_list
WHERE payouts = 12
ORDER BY Branche ASC
;


