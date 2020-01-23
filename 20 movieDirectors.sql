CREATE PROCEDURE movieDirectors()
BEGIN
	SELECT DISTINCT director  FROM moviesInfo WHERE year > 2000 
    GROUP BY director HAVING sum(oscars) > 2 
    ORDER BY director ASC;
END