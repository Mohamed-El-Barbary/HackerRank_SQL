-- Problem:
-- Find hackers who created coding challenges, include only:
--   - all hackers with max number of challenges
--   - hackers with unique challenge counts
-- Exclude: hackers who have same number < max

WITH ChallengeCounts AS (
  SELECT h.hacker_id, h.name, COUNT(*) AS num_challenges,
    RANK() OVER (ORDER BY COUNT(*) DESC) AS rank,
    COUNT(*) OVER (PARTITION BY COUNT(*)) AS count
  FROM Hackers h
  JOIN Challenges c ON h.hacker_id = c.hacker_id
  GROUP BY h.hacker_id, h.name
)
SELECT hacker_id, name, num_challenges
FROM ChallengeCounts
WHERE rank = 1 OR count = 1
ORDER BY num_challenges DESC, hacker_id
