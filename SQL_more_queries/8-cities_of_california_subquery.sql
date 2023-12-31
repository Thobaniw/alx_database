
-- Use the database
USE hbtn_0d_usa;

-- Get the state_id for California
SET @california_state_id = (SELECT id FROM states WHERE name = 'California');

-- List cities of California
SELECT * FROM cities.id, cities.name
FROM cities
WHERE cities.state_id = @california_state_id
ORDER BY cities.id ASC;
