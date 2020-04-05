/*Please add ; after each select statement*/
CREATE PROCEDURE routeLength()
BEGIN
	SELECT ROUND( SUM( SQRT( POWER(ABS(c1.x-c2.x), 2) + POWER(ABS(c1.y-c2.y), 2) ) ), 9 ) AS total
    FROM cities c1, cities c2
    WHERE c2.id - c1.id = 1;
END