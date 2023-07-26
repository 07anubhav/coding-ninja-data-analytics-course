SELECT 
    *
FROM
    customers;

SELECT 
    customerName, country
FROM
    customers;
    
SELECT 
    country, count(customerName) as countOfCustomer
FROM
    customers
GROUP BY country;

SELECT 
    state, country, COUNT(customerName) AS countOfCustomer
FROM
    customers
GROUP BY state,country;
-- --------------------------------------------
SELECT 
    country, COUNT(*)
FROM
    customers
WHERE
    state IS NOT NULL
GROUP BY country;

SELECT 
    country, SUM(creditLimit)
FROM
    customers
where creditLimit > 50000
GROUP BY country;

SELECT 
    country,state, count(*)
FROM
    customers
GROUP BY country,state
order by country;