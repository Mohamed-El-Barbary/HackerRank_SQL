-- Problem:
-- For each (age, power) combination of non-evil wands, find the wand with the minimum coins_needed

SELECT W.id, WP.age, W.coins_needed, W.power
FROM Wands W
JOIN Wands_Property WP ON W.code  = WP.code
WHERE W.coins_needed = (
            SELECT MIN(coins_needed)
            FROM Wands W2
            JOIN Wands_Property WP2 ON W2.code  = WP2.code
            WHERE WP2.is_evil = 0 AND W.power = W2.power AND WP.age = WP2.age 
)
ORDER BY W.power DESC, WP.age DESC