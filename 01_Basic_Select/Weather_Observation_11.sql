-- Problem: Query CITY names that either do NOT start OR do NOT end with a vowel, without duplicates
-- Table: STATION (includes ID, CITY, STATE, LAT_N, LONG_W)

SELECT DISTINCT CITY FROM STATION WHERE CITY NOT LIKE '[aeiou]%[aeiou]';