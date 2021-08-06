SELECT * FROM trips;
 
SELECT * FROM riders;
 
SELECT * FROM cars;

The primary key of trips is id.

The primary key of riders is id.

The primary key of cars is id.

--cross join between riders and cars
SELECT riders.first,
   riders.last,
   cars.model
FROM riders, cars;

--LEFT JOIN on trips.rider_id and riders.id
SELECT *
FROM trips
LEFT JOIN riders 
  ON trips.rider_id = riders.id;

--  Inner join
SELECT *
FROM trips
JOIN cars
  ON trips.car_id = cars.id;

--union
SELECT *
FROM riders
UNION
SELECT *
FROM riders2;

--the average cost for a trip
SELECT AVG(cost)
FROM trips;

--the average cost for a trip
SELECT AVG(cost)
FROM trips;
--round the result to 2 decimal places:
SELECT ROUND(AVG(cost), 2)
FROM trips;

-- searching within the riders table
SELECT *
FROM riders
WHERE total_trips < 500;

--number of cars that are active
SELECT COUNT(*)
FROM cars
WHERE status = 'active';

--finds the two cars that have the highest trips_completed
SELECT *
FROM cars
ORDER BY trips_completed DESC
LIMIT 2;
