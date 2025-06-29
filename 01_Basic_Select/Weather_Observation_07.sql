-- Problem: Query CITY names that end with a vowel (a, e, i, o, u) without duplicates
-- Table: STATION (includes ID, CITY, STATE, LAT_N, LONG_W)

SELECT DISTINCT CITY FROM STATION WHERE CITY LIKE '%[aeiou]';
