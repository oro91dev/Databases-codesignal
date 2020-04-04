/*Please add ; after each select statement*/
CREATE PROCEDURE localCalendar()
BEGIN
	SELECT events.event_id,
    IF(settings.hours =24, DATE_FORMAT(DATE_ADD(events.date, INTERVAL settings.timeshift MINUTE),"%Y-%m-%d %H:%i")
    , DATE_FORMAT(DATE_ADD(events.date, INTERVAL settings.timeshift MINUTE), "%Y-%m-%d %h:%i %p")) AS formatted_date

    FROM events INNER JOIN settings 
    ON events.user_id=settings.user_id
    
    ORDER BY 
    events.event_id; 

END