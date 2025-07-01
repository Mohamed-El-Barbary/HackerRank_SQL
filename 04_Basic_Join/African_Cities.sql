-- Problem:
-- Query the names of all cities where the continent is 'Africa'

SELECT CI.NAME
FROM CITY CI JOIN COUNTRY CO
ON CI.CountryCode  = CO.CODE
WHERE CO.CONTINENT  = 'AFRICA'