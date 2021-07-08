/* CRUED Create | Read | Update | Delete */

# CREATE --> siehe 04a...ALTER

# UPDATE --> Änderung in bestehender Tabelle. 
#UPDATE cats SET name = "Alonzo";  # Achtun, gesammte Spalte wird überschrieben!
#UPDATE cats SET name = "Alonzo" WHERE id 2;  # verweis auf die ID
#UPDATE cats SET name = "Alonzo" WHERE fur_color = "grey"; # Wählen eines anderen Einschränkungsparameter 
 

/* READ - SELECT : Ergebistabelle */
SELECT * FROM cats; 
SELECT name,age FROM cats; #Feld 
SELECT age,name FROM cats; #2 Felder Kombiniert
SELECT age,fur_color FROM cats; #2 Felder Kombiniert
SELECT name AS "Name", age AS "Alter" FROM cats; #2 Felder / neue Namen 

/* Restriktion durch WHERE */ 
SELECT 
    name AS "Name", 
    age AS "Alter" 
FROM cats
#WHERE id = 1
#WHERE fur_color = "red";
WHERE age > 35
; 

/* Delete - Vorsicht!! */
DELETE FROM cats,  # gesammte Tabelle löschen 
SELECT * FROM cats; # Alle Daten sind weg

DESCRIBE cats; 