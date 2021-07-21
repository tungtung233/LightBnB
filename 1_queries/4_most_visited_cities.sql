-- get a list of the most visited cities

SELECT properties.city, COUNT(reservations.*) AS total_reservations
FROM properties
JOIN reservations ON (properties.id = reservations.property_id)
GROUP BY properties.city
ORDER BY total_reservations DESC;