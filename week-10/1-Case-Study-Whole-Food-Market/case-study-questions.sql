/*
Task: Describe the TABLE- orders;
*/
desc orders;

/*
Refer table-orders
Write a query for the same. Result should be such that the highest profit category and its respective sum of profit be on the top of result set.
*/
select category,sum(profit)
from orders
group by category
order by sum(profit) desc;

/*
Write the query to update the city as Chandigarh where the State is Chandigarh.
Print all the contents of the table after updating.
*/
update orders
set city = 'Chandigarh'
where state = 'Chandigarh';

select *
from orders;

/*
Write a query to find the total profit sum from orders table.
Result should be such that only total profit sum is returned.
*/
select sum(profit)
from orders;

/*
Write a query to get the OrderID, ProductName and Profit. Result should be with respect to profit(In increasing order).
*/
select Order_ID, Product_Name, Profit
from orders
order by Profit asc;

/*
Write a query to get all the orders where there was a loss and report the order ID, product name and loss. 
Sort the result in a format that the highest loss is on the top.
*/
select Order_ID, Product_Name, Profit
from orders
where Profit < 0
order by Profit asc;

/*
Write a query to get the list of all orders which have loss and sort them in descending order of discount given.
Print OrderID, ProductName, Profit and Discount.
*/
select Order_ID, Product_Name, Profit, Discount
from orders
where Profit < 0
order by Discount desc;	

/*
You now want to know if there are particular states which are making losses. Write a query to get the State and sum of profit for each state. 
The result should be in increasing order of profit.
*/
select state, sum(profit)
from orders
group by state
order by sum(profit) asc;

/*
Write a query to get state, category and sum of profits.
*/
select State, Category, sum(Profit)
from orders
group by State, Category;

/*
You realised that there are three segments of products: Consumer, Corporate and Home office. You ask your manager to provide you a 
list of the people who are managing these segments. Unfortunately these are not present in the database. Since you want to digitise the system, 
you plan to put the data in the database. He provides you the data on a sheet of paper as follows:
Segment - Varchar(100)
Segment_Manager- Varchar(100)
*/
create table Manager(
    Segment varchar(100) not null,
    Segment_Manager varchar(100),
    primary key(Segment)
);

insert into Manager (Segment, Segment_Manager)
values 
('Consumer','Gaganjit Singh'),
('Corporate','Aman Jain'),
('Home Office','Kush Arora');

select *
from Manager;

/*
Write a query to get Segment, count of order, sum of profit.
*/
select Segment, count(Order_ID), sum(Profit)
from orders
group by Segment;

/*
Write the query to get sum of sales, sum of profit for the year 2020.
Note: Order_Date has char data type.
*/
select sum(sales), sum(profit)
from orders
where Order_Date LIKE '%20';

/*
Now your manager wants you to remove 2020 from the total sales and profit and present the result. 
Write a query to get the sum of sales of each segment and their respective segment manager for all years except 2020.
*/
select sum(orders.Sales), Manager.Segment_Manager
from orders 
inner join Manager 
on orders.segment = Manager.segment
where orders.order_date not like '%20'
group by orders.Segment;

/*
Write a query to get Customer ID and sum of profit for each. The result should be such that you are easily able to find the highest profit customer.
*/
select customers.Customer_ID, sum(profit)
from orders
inner join customers
on orders.Customer_ID = customers.Customer_ID
group by orders.Customer_ID
order by sum(profit) desc;

/*
Write a query to find the customer details having the highest Profit. The result should be such that you are easily able to 
find the highest profitable customer.
The query should have columns : Customer_ID, Customer_Name_, sum of Sales, sum of Profit, count of Order_ID.
*/
select customers.Customer_ID, customers.Customer_Name_, sum(orders.Sales), sum(orders.profit), count(orders.Order_ID)
from orders
inner join customers
on orders.Customer_ID = customers.Customer_ID
group by orders.Customer_ID, customers.Customer_Name_
order by sum(profit) desc;