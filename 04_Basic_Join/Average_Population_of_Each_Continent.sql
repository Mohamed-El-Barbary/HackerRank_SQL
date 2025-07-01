-- Problem:
-- Query each continent and the average city population,
-- rounded down to the nearest integer.

SELECT CO.CONTINENT , FLOOR(AVG(CI.POPULATION))
FROM CITY CI JOIN COUNTRY CO
ON CI.CountryCode  = CO.CODE
GROUP BY CO.CONTINENT