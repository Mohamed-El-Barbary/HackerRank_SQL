-- Problem:
-- Query the median value of LAT_N from STATION, rounded to 4 decimal places

SELECT DISTINCT CAST(MedianVal AS DECIMAL(10,4)) AS Median_Latitude
FROM (
    SELECT PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY LAT_N) 
           OVER () AS MedianVal
    FROM STATION
) AS DerivedTable;