CREATE PROCEDURE trackingSystem()
BEGIN
	SELECT NIL.anonymous_id AS anonym_id, NIL.event_name AS last_null, NOTNIL.event_name AS first_notnull
FROM
    (SELECT anonymous_id, event_name
    FROM 
        (SELECT MAX(received_at) AS received_at
        FROM (SELECT * FROM tracks WHERE user_id IS NULL) AS Nulls
        GROUP BY anonymous_id) AS TheNulls
        JOIN
        tracks
        ON TheNulls.received_at = tracks.received_at) AS NIL
    LEFT JOIN
    (SELECT anonymous_id, event_name
    FROM 
        (SELECT MIN(received_at) AS received_at
        FROM (SELECT * FROM tracks WHERE user_id IS NOT NULL) AS NotNulls
        GROUP BY anonymous_id) AS TheNotNulls
        JOIN
        tracks
        ON TheNotNulls.received_at = tracks.received_at) AS NOTNIL
    ON NIL.anonymous_id = NOTNIL.anonymous_id
ORDER BY NIL.anonymous_id
;
END