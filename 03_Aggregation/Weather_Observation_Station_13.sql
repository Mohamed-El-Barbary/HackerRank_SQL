-- Problem:
-- Query the sum of LAT_N from STATION where LAT_N > 38.7880 and < 137.2345
-- Truncate the result to 4 decimal places (not round)

SELECT CAST(ROUND(SUM(LAT_N) , 4) AS DECIMAL(18,4))  FROM STATION 
WHERE LAT_N BETWEEN 38.7880 AND 137.2345;