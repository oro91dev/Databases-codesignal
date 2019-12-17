CREATE PROCEDURE volleyballResults()
BEGIN
	select name, country, scored, missed, wins
    from results
    GROUP BY wins ASC;
END