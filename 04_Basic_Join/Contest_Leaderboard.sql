-- Problem:
-- Sum of max scores per challenge per hacker

SELECT H.hacker_id, H.name, SUM(S.Max_Score) AS Total_Score
FROM Hackers H JOIN
    (
       SELECT hacker_id, challenge_id, MAX(score) AS Max_Score
       FROM Submissions  
       GROUP BY hacker_id ,challenge_id
     ) AS S
     ON H.hacker_id = S.hacker_id
GROUP BY H.hacker_id, H.name
HAVING SUM(S.Max_Score) > 0
ORDER BY  Total_Score DESC, H.hacker_id ASC