SELECT 
    *
FROM
    employees
WHERE
    firstName LIKE '%ar%';
    
SELECT 
    *
FROM
    employees
WHERE
    firstName LIKE '_ar%';

SELECT 
    *
FROM
    employees
WHERE
    firstName LIKE '%ar__';
-- ----------------------------------------------------
SELECT 
    *
FROM
    employees
WHERE
    firstName NOT LIKE '_ar%';

SELECT 
    *
FROM
    employees
WHERE
    firstName NOT LIKE '%ar__';
    