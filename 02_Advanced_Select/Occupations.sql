-- Problem:
-- Pivot the OCCUPATIONS table so that each occupation is a column.
-- Names should be listed alphabetically under each occupation.
-- Output: Doctor | Professor | Singer | Actor

SELECT MAX(CASE WHEN Occupation = 'Doctor' THEN Name END) AS Doctor,
       MAX(CASE WHEN Occupation = 'Professor' THEN Name END) AS Professor,
       MAX(CASE WHEN Occupation = 'Singer' THEN Name END) AS Singer,
       MAX(CASE WHEN Occupation = 'Actor' THEN Name END) AS Actor
FROM (
    SELECT Name, Occupation,
           ROW_NUMBER() OVER(PARTITION BY Occupation ORDER BY Name) as rn
    FROM Occupations
) AS RankedOccupations
GROUP BY rn
ORDER BY rn;