-- Problem:
-- Generate a report showing Name (or NULL), Grade, and Marks
-- with sorting logic based on grade value

SELECT 
CASE WHEN G.Grade >= 8 THEN S.Name ELSE NULL END AS NAME ,
G.Grade , S.MarkS
FROM STUDENTS S JOIN GRADES G
ON G.Max_Mark >= S.Marks and  S.Marks  >= G.Min_Mark
ORDER BY G.Grade DESC , S.Name ASC , S.Marks ASC