-- Problem:
-- Given a table Projects(Task_ID, Start_Date, End_Date)
-- Each task lasts exactly 1 day (End_Date - Start_Date = 1 day)
-- Tasks with consecutive End_Date form the same project.
-- Output the start and end dates of each project,
-- sorted by project duration ascending, then by start date ascending.

SELECT A.Start_Date, MIN(B.End_Date) AS End_Date
FROM 
    (SELECT Start_Date
     FROM Projects
     WHERE Start_Date NOT IN (SELECT End_Date FROM Projects)
    ) AS A
INNER JOIN
    (SELECT End_Date
     FROM Projects
     WHERE End_Date NOT IN (SELECT Start_Date FROM Projects)
    ) AS B
    ON A.Start_Date < B.End_Date
GROUP BY A.Start_Date
ORDER BY DATEDIFF(DAY, A.Start_Date, MIN(B.End_Date)), A.Start_Date;