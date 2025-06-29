-- Problem: Query the cities with the shortest and longest names along with their name lengths
-- => If tie, choose the one that comes first alphabetically
-- Table: STATION (includes ID, CITY, STATE, LAT_N, LONG_W)

SELECT CITY, LEN(CITY)
FROM (
    SELECT TOP 1 CITY
    FROM STATION
    ORDER BY LEN(CITY), CITY
) AS ShortestCity

UNION ALL

SELECT CITY, LEN(CITY)
FROM (
    SELECT TOP 1 CITY
    FROM STATION
    ORDER BY LEN(CITY) DESC, CITY
) AS LongestCity;
