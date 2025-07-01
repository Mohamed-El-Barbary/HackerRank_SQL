-- Problem:
-- Query LONG_W where LAT_N is the smallest value greater than 38.7780
-- Round the result to 4 decimal places

SELECT CAST(ROUND(LONG_W, 4) AS DECIMAL(18, 4))
FROM STATION
WHERE CAST(ROUND(LAT_N, 4) AS DECIMAL(18, 4)) = (SELECT CAST(ROUND(MIN(LAT_N), 4) AS DECIMAL(18, 4)) FROM STATION WHERE LAT_N > 38.7780 );