SELECT 
    state, COUNT(*)
FROM
    customers
WHERE
    state IS NOT NULL
GROUP BY state
HAVING COUNT(*) > 5
ORDER BY state;

SELECT 
    state, COUNT(*)
FROM
    customers
GROUP BY state
HAVING COUNT(*) > 5
ORDER BY state;

SELECT 
    country, SUM(creditLimit)
FROM
    customers
GROUP BY country
HAVING SUM(creditLimit) > 50000
ORDER BY SUM(creditLimit) ASC;