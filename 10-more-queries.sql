-- SELECT * FROM users
-- WHERE first_name LIKE 'Ma%'; -- all name start with Ma, 'Ma_' -> this look for only three letters and start with 'Ma'


-- Aggregate functions
-- SELECT COUNT(id) FROM locations;


-- GROUP BY and Aggregate result
-- SELECT cities.name, COUNT(locations.id) AS mum_locations FROM cities
-- LEFT JOIN locations ON locations.city_name = cities.name
-- GROUP BY cities.name;

-- SELECT cities.name, locations.street,  COUNT(locations.id) AS mum_locations FROM cities
-- LEFT JOIN locations ON locations.city_name = cities.name
-- GROUP BY cities.name, locations.street;



SELECT cities.name, COUNT(locations.id) AS num_locations FROM cities
LEFT JOIN locations ON locations.city_name = cities.name
-- WHERE locations.city_name = 'Munich'; WHERE should be used before Aggregation function.
GROUP BY cities.name
-- HAVING num_locations > 1; -> num_locations not exist
HAVING COUNT(locations.id)>1; -- Having is to be used after AGGREGATE