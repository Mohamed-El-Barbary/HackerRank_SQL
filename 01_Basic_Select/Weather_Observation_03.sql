-- Problem: Query CITY names from STATION where ID is even, without duplicates
-- Table: STATION (includes ID, CITY, STATE, LAT_N, LONG_W)

SELECT DISTINCT S.CITY FROM STATION S WHERE MOD(S.ID , 2)= 0;