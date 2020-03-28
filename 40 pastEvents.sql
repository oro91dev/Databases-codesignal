CREATE PROCEDURE pastEvents()
BEGIN
	SELECT name, event_date
    FROM Events,
    (SELECT MAX(DATE(event_date)) AS last_date FROM Events) AS dt 
    WHERE  event_date != dt.last_date 
    AND DATEDIFF(dt.last_date, event_date) <= 7  
    ORDER BY event_date desc;
END