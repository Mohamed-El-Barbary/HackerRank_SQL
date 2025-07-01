-- Problem:
-- Query the sum of the populations for all Japanese cities in CITY
-- COUNTRYCODE for Japan is 'JPN'

SELECT SUM(POPULATION) FROM CITY WHERE COUNTRYCODE = 'JPN' ;