-- Problem:
-- Find hackers who scored full marks in more than one challenge
-- Sort by count DESC, then hacker_id ASC

SELECT H.hacker_id , H.name
FROM Hackers H 
JOIN Submissions S ON H.hacker_id = S.hacker_id
JOIN Challenges C ON S.challenge_id  = C.challenge_id  
JOIN Difficulty D ON C.Difficulty_level = D.Difficulty_level
WHERE S.score = D.score
GROUP BY H.hacker_id , H.name 
HAVING COUNT(*)>1
ORDER BY COUNT(*)desc, H.hacker_id;