/*Please add ; after each select statement*/
CREATE PROCEDURE countriesSelection()
BEGIN
	Select  name, continent, population
    From countries
    Where continent = 'Africa'
    ORDER BY name ASC;
END