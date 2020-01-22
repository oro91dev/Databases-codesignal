CREATE PROCEDURE usersByContinent()
BEGIN
	SELECT continent, sum(users) AS "users" from countries
    GROUP BY continent
    ORDER BY users DESC;
END