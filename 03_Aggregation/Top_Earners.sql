-- Problem:
-- Find the maximum total earnings (salary * months) among all employees,
-- and count how many employees have this maximum value.

SELECT  
CONCAT_WS(' ', (SELECT MAX(months * salary) as earnings FROM Employee )
,(SELECT COUNT(*) FROM (SELECT RANK() OVER (ORDER BY months * salary DESC) AS RN FROM Employee ) Top_Number  WHERE Top_Number.RN=1 )  ) ;
-- ROW_NUMBER( ) OVER (ORDER BY Salary DESC) RN