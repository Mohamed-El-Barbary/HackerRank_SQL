-- P(R) represents a pattern drawn by Julia in R rows. The following pattern represents P(5):

/* 

* 
* * 
* * * 
* * * * 
* * * * *

*/
-- Write a query to print the pattern P(20).

SELECT REPLICATE('* ', number) AS pattern
FROM master..spt_values
WHERE type = 'P' AND number BETWEEN 1 AND 20
ORDER BY number ASC;