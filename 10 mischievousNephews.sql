CREATE PROCEDURE mischievousNephews()
BEGIN
	select weekday(mischief_date) AS 'weekday',  mischief_date, author, title
    
    from mischief
    
    
    ORDER BY weekday, FIELD(author,'Huey', 'Dewey','Louie'), mischief_date, title;

END