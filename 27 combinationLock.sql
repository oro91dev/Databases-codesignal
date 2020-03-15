CREATE PROCEDURE combinationLock()
BEGIN
    SET @ch = 1;
    SELECT @ch := @ch * LENGTH(characters) AS 'combinations'
    FROM discs
    ORDER BY combinations DESC
    LIMIT 1;
END