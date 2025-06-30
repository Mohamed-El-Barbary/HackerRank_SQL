-- Problem 1:
-- Query an alphabetically ordered list of all names in the OCCUPATIONS table.
-- For each name, append the first letter of their profession in parentheses.
-- Example: AnActorName(A), ADoctorName(D), AProfessorName(P), and ASingerName(S)

SELECT CONCAT_WS('',Name, '(', LEFT(occupation,1), ')') AS Name_Occupations FROM occupations
UNION ALL
SELECT CONCAT_WS(' ' ,'There are a total of', COUNT(occupation),lower(occupation)+'s.')
FROM occupations
GROUP BY occupation
ORDER BY Name_Occupations