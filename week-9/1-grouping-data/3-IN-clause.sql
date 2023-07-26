SELECT 
    *
FROM
    products
WHERE
    productLine IN ('Motorcycles' , 'Classic Cars', 'Vintage Cars')
        AND quantityInStock > 8000
ORDER BY quantityInStock;

SELECT 
    *
FROM
    products
WHERE
    productLine NOT IN ('Motorcycles' , 'Classic Cars', 'Vintage Cars')
        AND quantityInStock > 8000
ORDER BY quantityInStock;