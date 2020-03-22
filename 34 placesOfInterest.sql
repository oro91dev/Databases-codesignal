CREATE PROCEDURE placesOfInterest()
BEGIN
	SELECT country,
    SUM(CASE WHEN leisure_activity_type='Adventure park' THEN number_of_places else 0 END) 'adventure_park',
    SUM(CASE WHEN leisure_activity_type='Golf' THEN number_of_places else 0 END) 'golf',
    SUM(CASE WHEN leisure_activity_type='River cruise' THEN number_of_places else 0 END) 'river_cruise',
    SUM(CASE WHEN leisure_activity_type='Kart racing' THEN number_of_places else 0 END) 'kart_racing'

    FROM countryActivities
    GROUP BY
    country
    ORDER BY country asc;
END