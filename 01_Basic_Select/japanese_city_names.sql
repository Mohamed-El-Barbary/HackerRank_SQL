-- Problem: Query the names of all Japanese cities
-- Table: CITY (with columns like ID, Name, CountryCode, District, Population)

SELECT C.NAME FROM CITY C WHERE C.COUNTRYCODE = 'JPN' ;