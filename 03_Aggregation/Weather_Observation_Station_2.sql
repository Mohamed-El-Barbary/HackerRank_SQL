-- Problem:
-- Query the sum of all values in LAT_N and LONG_W from STATION,
-- rounded to 2 decimal places.

SELECT CAST(ROUND(SUM(LAT_N) , 2) AS DECIMAL(18,2)) , CAST(ROUND(SUM(LONG_W) , 2) AS DECIMAL(18,2))  FROM STATION;