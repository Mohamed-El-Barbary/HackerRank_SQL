-- Problem: Query all attributes of every Japanese city
-- Table: CITY (with columns like ID, Name, CountryCode, District, Population)

SELECT C.* FROM CITY C WHERE C.COUNTRYCODE ='JPN';