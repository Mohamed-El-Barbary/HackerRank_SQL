-- Problem:
-- Compute the Manhattan Distance between the points with:
--   min LAT_N & min LONG_W  AND  max LAT_N & max LONG_W
-- Round the result to 4 decimal places.

SELECT CAST(ABS(MAX(LAT_N) - MIN(LAT_N)) + ABS(MAX(LONG_W) - MIN(LONG_W)) AS DECIMAL(10 , 4))
FROM STATION;