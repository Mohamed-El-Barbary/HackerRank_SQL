-- Problem:
-- Given a table Functions(X, Y)
-- Find all pairs (X1, Y1) such that there exists another pair (X2, Y2) where
-- X1 = Y2 AND Y1 = X2 (i.e., symmetric pairs).
-- Output these symmetric pairs with the condition X1 ≤ Y1,
-- and order the result by X ascending.

SELECT DISTINCT f1.X, f1.Y
FROM (
    SELECT X, Y, ROW_NUMBER() OVER (ORDER BY X) AS rn
    FROM Functions
) f1
JOIN (
    SELECT X, Y, ROW_NUMBER() OVER (ORDER BY X) AS rn
    FROM Functions
) f2
    ON f1.X = f2.Y AND f1.Y = f2.X
WHERE f1.X <= f1.Y
  AND f1.rn != f2.rn
ORDER BY f1.X;