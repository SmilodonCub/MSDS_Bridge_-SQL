-- Assignment: SQL SELECT & Aggregations
-- Bonnie Cooper

-- (1) Which destination in the flights database is the furthest distance away, 
-- 		based on information in the flights table.
-- 		Show the SQL query(s) that support your conclusion.
SELECT dest, max( distance )
FROM flights
GROUP BY dest
ORDER BY max(distance) DESC;

-- (2) What are the different numbers of engines in the planes table? 
-- 		For each number of engines, which aircraft have the most number of seats? 
-- 		Show the SQL statement(s) that support your result.
SELECT model, engines
FROM planes
WHERE seats IN (SELECT max(seats) FROM planes GROUP BY engines)
GROUP BY model, engines
ORDER BY engines;

-- (3) Show the total number of flights.
-- I dificulty interpreting this question, 
-- so I have several statements that take different approaches:
-- this query shows the total number of flights (rows in the table flights)
SELECT COUNT(*)
FROM flights;
-- this query shows the total number of flights grouped by flight routes
SELECT flight, COUNT(flight)
FROM flights
GROUP BY flight;
-- this query shows the total number of flight routes
SELECT COUNT( DISTINCT flight )
FROM flights;

-- (4) Show the total number of flights by airline (carrier)
SELECT carrier, COUNT( carrier )
FROM flights
GROUP BY carrier;

-- (5) Show all of the airlines, ordered by number of flights in descending order.
SELECT carrier, COUNT( carrier )
FROM flights
GROUP BY carrier
ORDER BY COUNT( carrier ) DESC;

-- (6) Show only the top 5 airlines, by number of flights, 
-- 		ordered by number of flights in descending order.
SELECT carrier, COUNT( carrier )
FROM flights
GROUP BY carrier
ORDER BY COUNT( carrier ) DESC
LIMIT 5;

-- (7) Show only the top 5 airlines, by number of flights of distance 1,000 miles or greater, 
-- 		ordered by number of flights in descending order.
SELECT carrier, count( carrier )
FROM flights
WHERE distance IN (SELECT distance FROM flights HAVING distance >= 1000)
GROUP BY carrier
ORDER BY COUNT( carrier )
LIMIT 5;

-- (8) Create a question that (a) uses data from the flights database, 
-- and (b) requires aggregation to answer it, and write down both the question, 
-- and the query that answers the question.
-- QUERY: Which airplane (by tailnum) flew the most miles? (Just show the top 10)
SELECT tailnum, SUM(distance)
FROM flights
WHERE tailnum IS NOT NULL
GROUP BY tailnum
ORDER BY SUM(distance) DESC
LIMIT 10;