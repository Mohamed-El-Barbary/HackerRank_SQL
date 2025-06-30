-- Problem:
-- For each company, print:
-- company_code, founder, total_lead_managers, total_senior_managers, total_managers, total_employees
-- Order by company_code (as string)
SELECT  C.company_code , C.founder ,
        COUNT(DISTINCT E.lead_manager_code),
        COUNT(DISTINCT E.senior_manager_code),
        COUNT(DISTINCT E.manager_code),
        COUNT(DISTINCT E.employee_code)
FROM Company C
JOIN Employee E ON C.company_code = E.company_code
GROUP BY C.company_code , C.founder
ORDER BY C.company_code 