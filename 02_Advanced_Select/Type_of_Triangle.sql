-- Problem: Identify the type of triangle based on side lengths A, B, C
-- Table: TRIANGLES (columns: A, B, C)

SELECT
    CASE
        WHEN (T.A + T.B <= T.C OR T.C + T.B <= T.A OR T.A + T.C <= T.B ) THEN 'Not A Triangle'
        WHEN (T.A = T.B AND T.B = T.C) THEN 'Equilateral'
        WHEN (T.A = T.B OR T.A = T.C OR T.B = T.C) THEN 'Isosceles'
        WHEN (T.A <> T.B AND T.B <> T.C) THEN 'Scalene'
    END
FROM TRIANGLES T ;