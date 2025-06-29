-- Problem: Query the NAME field for all American cities with populations larger than 120000
-- Table: CITY (with columns like ID, Name, CountryCode, District, Population)

SELECT T.NAME FROM CITY T WHERE T.COUNTRYCODE = 'USA' AND T.POPULATION > 120000;