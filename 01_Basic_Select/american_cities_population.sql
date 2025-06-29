-- Problem: Query all American cities in the CITY table with populations larger than 100000
-- Table: CITY (fields include at least: ID, Name, CountryCode, District, Population)

SELECT *
FROM CITY
WHERE CountryCode = 'USA'
  AND Population > 100000;