-- Problem:
-- Find the smallest LAT_N value greater than 38.7780 and round it to 4 decimal places.

SELECT CAST(ROUND(MIN(LAT_N), 4) AS DECIMAL(18, 4)) FROM STATION WHERE LAT_N > 38.7780 ;