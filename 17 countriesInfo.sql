CREATE PROCEDURE countriesInfo()
BEGIN
	select COUNT(name) AS "number", avg(population) AS "average", sum(population) AS "total" from countries
    ORDER BY name, population;
END