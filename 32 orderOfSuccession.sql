/*Please add ; after each select statement*/
CREATE PROCEDURE orderOfSuccession()
BEGIN
	SELECT CASE WHEN gender = 'F' THEN CONCAT('Queen ', name)
    WHEN gender = 'M' THEN CONCAT('King ', name) END name
    FROM Successors
    ORDER BY birthday asc;
END