-- -- SELECT (reservations.*), (properties.*), avg(property_reviews.rating) as average_rating
-- SELECT properties.id, title, properties.cost_per_night, reservations.start_date, avg(property_reviews.rating) as average_rating
-- FROM reservations
-- JOIN properties ON property_id = properties.id
-- JOIN property_reviews ON reservation_id = reservations.id
-- WHERE (reservations.end_date < now()::date AND reservations.guest_id = 1)
-- GROUP BY reservations.id, properties.id
-- ORDER BY reservations.start_date
-- LIMIT 10;

-- SELECT properties.id, title, AVG(rating)
-- FROM properties join property_reviews
-- ON property_id = properties.id
-- GROUP BY properties.id;

-- SELECT reservations.id, sub.title, cost_per_night, start_date, sub.avg FROM
-- reservations JOIN 
-- properties ON properties.id = property_id
-- JOIN (SELECT properties.id as id, title, AVG(rating) as avg
--   FROM properties join property_reviews
--   ON property_id = properties.id
--   GROUP BY properties.id) AS sub ON sub.id = properties.id
-- WHERE guest_id = 1 AND reservations.end_date < now()::date;


-- SELECT properties.id, reservations.start_date, title, cost_per_night, average_sub.average_rating
SELECT reservations.*, properties.*, average_sub.average_rating as average_rating
FROM reservations 
JOIN properties ON properties.id = property_id
JOIN
  (SELECT property_reviews.property_id, AVG(property_reviews.rating) as average_rating
  FROM property_reviews
  GROUP BY property_reviews.property_id) as average_sub 
  ON average_sub.property_id = properties.id
WHERE end_date < now()::date AND guest_id = 1
ORDER BY start_date
LIMIT 10;