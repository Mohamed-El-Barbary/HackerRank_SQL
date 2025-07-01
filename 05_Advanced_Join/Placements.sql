-- Problem:
-- Given three tables:
-- Students(ID, Name)
-- Friends(ID, Friend_ID) -- each student has exactly one best friend
-- Packages(ID, Salary) -- salary offered to each student
-- 
-- Find the names of students whose best friend was offered a higher salary than themselves.
-- Output the student names ordered by their best friend's salary (ascending or descending as needed).
-- It's guaranteed no two students have the same salary.

SELECT S.Name
FROM Students S
JOIN Packages P ON S.ID = P.ID
JOIN Friends F ON S.ID = F.ID
JOIN Packages PA ON F.Friend_ID = PA.ID
WHERE PA.Salary > P.Salary
ORDER BY PA.Salary;