SELECT *
FROM airports
LIMIT 5;
-- What is the average altitude of the three major New York airports?
SELECT AVG(alt)
FROM airports
WHERE faa = 'LGA' OR faa='JFK' OR faa='EWR';
-- What is the average altitude for airports grouped by timezone. Which timezone has the highest altitude? 
-- Why?
SELECT tz, AVG(alt)
FROM airports
GROUP BY tz;
-- Which of these four airplanes made the most flights out of New York City airports in 2013?
-- Plane tailnums: 'N125UW','N848MQ','N328AA','N247JB'
SELECT *
FROM flights
LIMIT 5;
SELECT tailnum, COUNT(*) as total
FROM flights AS tailnumSum
WHERE origin IN ('EWR', 'JFK', 'LGA')
AND tailnum IN ('N125UW' ,'N848MQ','N328AA','N247JB')
GROUP BY tailnum
ORDER BY total DESC;
-- For each of these four planes, show the corresponding meta-data (model, manufacturer, engines, etc.) 
-- about each plane? 
-- What is surprising about the information returned? 
-- How do you think this could happen?
SELECT *
FROM planes
LIMIT 5;
SELECT *
FROM planes
WHERE tailnum IN ('N125UW' ,'N848MQ','N328AA','N247JB');
-- Write a SELECT statement that shows for all of the flights during the period February 14 th to 
-- February 17 th for each of the four planes above: ‘N125UW’,’N848MQ’,’N328AA’,’N247JB’. 
-- Your select statement should return the following information: 
-- tailnum, flight date information, departure delay, arrival delay, 3 digit destination code
SELECT tailnum, year, month, day, dep_delay, arr_delay, dest
FROM flights
WHERE (tailnum IN ('N125UW' ,'N848MQ','N328AA','N247JB'))
AND ( month = 2 AND day >= 14 AND day <= 17 )
ORDER BY tailnum;