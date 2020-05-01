CREATE PROCEDURE dancingCompetition()
BEGIN
SET @firstMax = (SELECT MAX(first_criterion) FROM scores);
SET @secondMax = (SELECT MAX(second_criterion) FROM scores);
SET @thirdMax = (SELECT MAX(third_criterion) FROM scores);
SET @firstMin = (SELECT MIN(first_criterion) FROM scores);
SET @secondMin = (SELECT MIN(second_criterion) FROM scores);
SET @thirdMin = (SELECT MIN(third_criterion) FROM scores);

SELECT *
FROM scores
WHERE 
    (first_criterion = @firstMax OR first_criterion = @firstMin) +
    (second_criterion = @secondMax OR second_criterion = @secondMin) +
    (third_criterion = @thirdMax OR third_criterion = @thirdMin)
    < 2;
END