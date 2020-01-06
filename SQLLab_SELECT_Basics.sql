-- Write a SELECT statement that returns all of the rows and columns in the planes table
SELECT * FROM planes;
-- Using the weather table, concatenate the year, month, and day columns to display a date in the form
-- "3/17/2013".
SELECT CONCAT(month, '/', day, '/', year)
FROM weather;
-- Order by planes table by number of seats, in descending order.
SELECT * 
FROM planes
ORDER BY seats DESC;
-- List only those planes that have an engine that is 'Reciprocating'
SELECT *
FROM planes 
WHERE engine='Reciprocating';
-- List only the first 5 rows in the flights table
SELECT *
FROM flights
LIMIT 5;
-- What was the longest (non-blank) air time?
SELECT MAX(air_time)
FROM flights;
-- What was the shortest (non-blank) air time for Delta?
SELECT MIN(air_time)
FROM flights
WHERE carrier='DL';
-- Show all of the Alaska Airlines flights between June 1st, 2013 and June 3rd, 2013. Is the way the data is stored in
-- the database helpful to you in making your query?
SELECT *
FROM flights
WHERE (carrier='AA' AND year='2013' AND month='6')
OR (carrier='AA' AND year='2013' AND month='7' AND day <=3);
-- What is the average altitude of airports?
SELECT AVG(alt)
FROM airports;