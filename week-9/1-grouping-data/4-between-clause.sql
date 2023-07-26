SELECT 
    *
FROM
    products
WHERE
    quantityInStock BETWEEN 4857 AND 7995
ORDER BY quantityInStock;

SELECT 
    *
FROM
    products
WHERE
    productName BETWEEN 'A' AND 'D'
ORDER BY productName;

SELECT 
    *
FROM
    products
WHERE
    productName BETWEEN 'Abc' AND 'cap'
ORDER BY productName;