CREATE PROCEDURE suspectsInvestigation()
BEGIN
	SELECT id, name, surname
    FROM Suspect
    WHERE height <=170 and name like "b%" AND surname LIKE "%Gre_n%" AND Length(surname) = 5
    
    ORDER BY id, name, surname ASC;
END