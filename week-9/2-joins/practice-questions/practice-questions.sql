-- Database: Classic models
/*
As an analyst your job is to visualize different scenarios. Currently, you want to know all the orders linked to customers. Join the two tables so that the resulting set has the data that are common in both the tables.
*/
select o.orderNumber
from orders o
inner join customers c
on o.customerNumber = c.customerNumber;

/*
Now that you have connected the two tables- orders and customers, write a query to find out the order numbers of 'Atelier graphique' (customer name).
*/
select o.orderNumber
from orders o
inner join customers c
on o.customerNumber = c.customerNumber
where c.customerName = 'Atelier graphique';

/*
Get sum of priceEach for orderNumber 10300 and customerNumber = 128 from order and orderdetails table.
*/
select sum(orderdetails.priceEach)
from orders
inner join orderdetails
on orders.orderNumber = orderdetails.orderNumber
where orders.orderNumber = 10300 and orders.customerNumber = 128;

/*
Previously you linked two tables together, that is orders and customers. You now want to analyze the details of these orders too. Connect the three tables- orders, customers and orderdetails such that the result set contains the information that is common to all three tables.
*/
select orders.orderNumber
from orders
inner join customers
on orders.customerNumber = customers.customerNumber
inner join orderdetails
on orders.orderNumber = orderdetails.orderNumber;

/*
Get sum of priceeach from orderdetails table for customer name ’Atelier graphique’ from customers table matching orderNumber from orders table.
*/
select sum(orderdetails.priceEach)
from orders
inner join customers
on orders.customerNumber = customers.customerNumber
inner join orderdetails
on orders.orderNumber = orderdetails.orderNumber
where customers.customerName = 'Atelier graphique';
