-- Problem: Find the difference between total CITY entries and distinct CITY entries
-- Table: STATION (includes ID, CITY, STATE, LAT_N, LONG_W)

SELECT COUNT(CITY) - COUNT(DISTINCT CITY) FROM STATION ;
