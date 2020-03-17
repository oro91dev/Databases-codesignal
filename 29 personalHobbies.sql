CREATE PROCEDURE personalHobbies()
BEGIN
  SELECT name
  FROM people_hobbies
  WHERE hobbies & 2 AND hobbies & 1
  ORDER BY name asc;
END