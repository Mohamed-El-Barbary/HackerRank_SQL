-- Problem:
-- Compute the Euclidean Distance between:
--   (MIN(LAT_N), MIN(LONG_W)) and (MAX(LAT_N), MAX(LONG_W))
-- Format the result to 4 decimal places.

SELECT CAST(SQRT(POWER(MAX(LAT_N) - MIN(LAT_N),2) + POWER(MAX(LONG_W) - MIN(LONG_W),2)) AS DECIMAL(10,4)) FROM STATION