-- Problem:
-- Find the LONG_W value where LAT_N is the maximum (but less than 137.2345),
-- and round the result to 4 decimal places.

SELECT CAST(ROUND(LONG_W, 4) AS DECIMAL(18, 4))
FROM STATION
WHERE CAST(ROUND(LAT_N, 4) AS DECIMAL(18, 4)) = (
    SELECT CAST(ROUND(MAX(LAT_N), 4) AS DECIMAL(18, 4))
    FROM STATION
    WHERE LAT_N < 137.2345