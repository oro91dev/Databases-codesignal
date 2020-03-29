/*Please add ; after each select statement*/
CREATE PROCEDURE netIncome()
BEGIN
	SELECT YEAR(date)AS 'year',
    QUARTER(date) AS 'quarter',
    sum(profit)-sum(loss) AS 'net_profit'
    FROM accounting
    GROUP BY 
    year, quarter
    ORDER BY date;    
END