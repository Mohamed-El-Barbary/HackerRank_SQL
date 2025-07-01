-- Problem:
-- Query the sum of populations of all cities where the continent is 'Asia'

SELECT SUM(CI.POPULATION)
FROM CITY CI JOIN COUNTRY CO
ON CI.CountryCode  = CO.CODE
WHERE CO.CONTINENT = 'Asia' ;