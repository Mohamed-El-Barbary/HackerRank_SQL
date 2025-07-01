-- Problem:
-- Query the maximum LAT_N from STATION that is less than 137.2345
-- Truncate the result to 4 decimal places

SELECT MAX(MAX_VALUE) FROM
(SELECT (CAST(ROUND(LAT_N, 4) AS DECIMAL(18, 4))) AS MAX_VALUE FROM STATION WHERE LAT_N < 137.2345) AS greatest_value;