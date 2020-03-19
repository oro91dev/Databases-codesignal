/*Please add ; after each select statement*/
CREATE PROCEDURE habitatArea()
BEGIN
    SELECT 
    ST_Area(
        ST_ConvexHull(
            ST_GeomFromText(
                CONCAT('Multipoint(',GROUP_CONCAT(x," ",y), ')')
             )
        )
    ) AS area
	FROM places;
END

/*
Solution 2
 SET @c = (SELECT CONCAT('MULTIPOINT(', GROUP_CONCAT( CONCAT(x, ' ', y) SEPARATOR ','),')') FROM places);
SELECT ST_Area(ST_ConvexHull(ST_GeomFromText(@c))) AS area;

*/