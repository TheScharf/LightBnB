SELECT reservations.id as id, properties.title, properties.cost_per_night, reservations.start_date, avg(rating) as average_rating
FROM reservations
JOIN properties ON properties.id = property_id
JOIN property_reviews ON reservations.id = reservation_id
JOIN users ON users.id = reservations.guest_id
WHERE users.id = 1
GROUP BY reservations.id, properties.id
ORDER BY start_date
LIMIT 10;