CREATE PROCEDURE sunnyHolidays()
BEGIN
	SELECT holiday_date AS 'ski_date'
    FROM holidays 
    WHERE EXISTS 
    (SELECT sunny_date
    FROM weather 
    WHERE weather.sunny_date = holidays.holiday_date)
    ORDER BY   
    holiday_date;
END