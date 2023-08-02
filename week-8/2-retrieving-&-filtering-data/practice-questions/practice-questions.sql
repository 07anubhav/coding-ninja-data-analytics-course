use classicmodels;
/*
Analyze the products table. products table is one of the tables in classicmodels database and stores a list of scale model cars. ( The database and tables are already created on the platform)
*/
select *
from products;

/*
As analyzed from the previous question, there are alot of rows in the products table. You want to work on a small segment of data. Retrieve the first 15 rows from the products table.
*/
select *
from 
products
limit 15;

/*
It is well noticed through the previous question that there are different types of productLine available. Write a query to display all the types of productLine (distinct).
*/
select 
distinct(productLine)
from products;

/*
You want to get an idea of what type of products are available. Retrieve the first 10 distinct productName and their respective productLine from the products table.
*/
select
distinct(productName),productLine
from
products
limit 10;

/*
Given below are the details of orderdetails table. It is one of the tables in classicmodels database. orderdetails stores sales order line items for each sales order.
Table- orderdetails
The company wants to check how many of their products are in high demand. Get orderNumber of those orders where ordered quantity is equal to 59 and price of each products is greater than 100.
*/
select
distinct(productName),productLine
from
products
limit 10;

/*
The company wants to check the orders only where orderLineNumber is provided. Print out all the details of the orders where orderLineNumber is not NULL.
*/
select *       
from orderdetails
where orderLineNumber is not null;

/*
You are required to analyse all the high and low selling products. Find out all the productCode and respective quantityOrdered where the ordered quantity is either greater than or equal to 50 or less than 25.
*/
select productCode, quantityOrdered
from orderdetails
where quantityOrdered >= 50 or quantityOrdered < 25;	

/*
The company next wants you to analyze the records of the product. Find the number of distinct productLine in the products table.
*/
select COUNT(distinct(productLine))
from products;

/*
You want to find the most expensive product in the company. Find the maximum buyPrice of all the products available. Refer to products table for the same.
*/
select MAX(buyPrice)
from products;

/*
Now that we know there are different types of products available in the company. Find the total number (quantity in stock) of motorcycles in products table. 'Motorcycles' is one of the productLines in products table.
*/
SELECT 
    SUM(quantityInStock)
FROM
    products
WHERE
    productLine = 'Motorcycles';
    
/*
Find the average MSRP of the products with the productScale either 1:12 or 1:18;
*/
SELECT 
    AVG(MSRP)
FROM
    products
WHERE
    productScale = '1:12'
        OR productScale = '1:18';
        
/*
Find the minimum buyPrice from products table where productLine is not Trucks and Buses.
*/
SELECT 
    MIN(buyPrice)
FROM
    products
WHERE
    productLine != 'Trucks and Buses';	

/*
Given below is the details about the products table. products table stores a list of scale model cars.
Table- products
Update MSRP of motorcycles to 100 in the products table and get the sum of MSRP of motorcycles.
*/
update products
set MSRP = 100
where productLine = 'Motorcycles';

select SUM(MSRP)
from products
where productLine = 'Motorcycles';

/*
A new shipment was received for the productCode- S10_1949 . The updated quantity in stock for this product becomes 8000. Make the changes in the dataset to reflect this update.
Print out productCode,productName and respective quantityinstock for the productCode- S10_1949.
*/
update products
set quantityInStock = 8000
where productCode = 'S10_1949';

select productCode, productName, quantityInStock  
from products
where productCode = 'S10_1949';

/*
The company next wants you to analyze the records of the product. Find the number of distinct productLine in the products table.
*/
SELECT COUNT(DISTINCT productLine)
FROM products;
	