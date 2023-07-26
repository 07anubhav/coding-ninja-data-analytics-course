select False and NULL;
use classicmodels;

SELECT 
    COUNT(comments)
FROM
    orders;

SELECT 
    COUNT(comments)
FROM
    orders
WHERE
    comments IS NOT NULL;

select count(distinct(status))
from orders;
-- -------------------------------------------------------------------
desc payments;

SELECT 
    *
FROM
    payments
limit 10;


SELECT 
    AVG(amount)
FROM
    payments
WHERE
    amount > 20000;
    
SELECT 
    MIN(amount)
FROM
    payments;
    
SELECT 
    MAX(amount)
FROM
    payments;
-- -----------------------------------------------
SELECT DISTINCT
    *
FROM
    products;


SELECT 
    COUNT(quantityInStock)
FROM
    products
WHERE
    productLine = 'Motorcycles';
    
SELECT 
    AVG(MSRP)
FROM
    products
WHERE
    productScale = '1:12'
        OR productScale = '1:18';
        
SELECT 
    MIN(buyPrice)
FROM
    products
WHERE
    productLine != 'Trucks and Buses';
        
