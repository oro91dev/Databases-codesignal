CREATE PROCEDURE restaurantInfo()
BEGIN
    ALTER TABLE restaurants ADD description VARCHAR(100) DEFAULT 'TBD';
    ALTER TABLE restaurants ADD active INT DEFAULT 1;

    SELECT * FROM restaurants ORDER BY id;
END
