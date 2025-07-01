-- Problem:
-- Find the error between the actual average salary and the one calculated with zeros removed from the salary.
-- Round the result up to the nearest integer.

SELECT CAST(CEILING(AVG(CAST(Salary AS FLOAT)) - AVG(CAST(REPLACE(Salary, '0', '') AS FLOAT))) AS INT) FROM EMPLOYEES ;