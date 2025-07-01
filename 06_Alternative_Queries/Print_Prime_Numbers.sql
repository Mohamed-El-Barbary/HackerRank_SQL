-- Problem:
-- Write a query to print all prime numbers less than or equal to 1000.
-- The output should be a single line.
-- The prime numbers should be separated by an ampersand (&) symbol.
-- Example: for primes <= 10 → 2&3&5&7

SELECT STRING_AGG(CAST(n AS VARCHAR), '&') AS PrimeNumbers
FROM (
    SELECT number AS n
    FROM master..spt_values
    WHERE type = 'P' AND number BETWEEN 2 AND 1000
) AS Numbers
WHERE NOT EXISTS (
    SELECT 1
    FROM master..spt_values AS d
    WHERE d.type = 'P'
      AND d.number BETWEEN 2 AND Numbers.n - 1
      AND Numbers.n % d.number = 0
);