-- Problem: Query names of employees with salary > 2000 and months < 10, ordered by employee_id
-- Table: Employee (employee_id, name, months, salary)

SELECT name FROM Employee WHERE salary > 2000 AND months < 10  ORDER BY employee_id asc;