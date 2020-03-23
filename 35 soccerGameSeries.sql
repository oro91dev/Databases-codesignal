CREATE PROCEDURE soccerGameSeries()
BEGIN
	SELECT CASE 
           WHEN SUM(IF(first_team_score > second_team_score,1,0 ) ) > SUM(IF(first_team_score < second_team_score,1,0 ) )THEN 1
           WHEN SUM(IF(first_team_score > second_team_score,1,0 ) ) < SUM(IF(first_team_score < second_team_score,1,0 ) )THEN 2
           WHEN SUM(first_team_score) > SUM(second_team_score) THEN 1
           WHEN SUM(first_team_score) < SUM(second_team_score) THEN 2
           WHEN SUM(IF(match_host = 2,first_team_score,0)) > SUM(IF(match_host = 1,second_team_score,0)) THEN 1
           WHEN SUM(IF(match_host = 2,first_team_score,0)) < SUM(IF(match_host = 1,second_team_score,0)) THEN 2
           ELSE 0
           END AS winner
    FROM scores;
END