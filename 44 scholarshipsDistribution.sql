/*Please add ; after each select statement*/
CREATE PROCEDURE scholarshipsDistribution()
BEGIN
    SELECT c.candidate_id AS 'student_id'

	FROM candidates c

    WHERE c.candidate_id NOT IN (SELECT student_id FROM detentions)

    ORDER BY c.candidate_id ASC;
   
END