CREATE PROCEDURE top5AverageGrade()
BEGIN
    SELECT ROUND(AVG(g.grade),2) AS average_grade
	FROM (SELECT grade FROM students
    ORDER BY grade DESC
    limit 5) g;
END