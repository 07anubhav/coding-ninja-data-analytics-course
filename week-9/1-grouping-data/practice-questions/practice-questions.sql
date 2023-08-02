/*
Analyze the employees table. employees table is one of the tables in classicmodels database. It stores all employee information as well as the organization structure such as who reports to whom.
employees Table

You want to check the employment status of each department. Write a Query to find the total number of employees in each department( department refers to JobTitle here).
*/
select jobTitle as 'Job Title', count(*) as 'Employees Count'
from employees
group by jobTitle;

/*
Analyze the employees' table.
Next, you want to survey all the offices. Get the number of employees working in each office.
 1. Print officeCode column as "Office Code".
 2. Print number of employees column as "Employees Count".
 */
 select officeCode as "Office Code", count(*) as 'Employees Count'
from employees
group by officeCode;

/*
Next task you have is to analyze all the customers. Find the average credit limit of all the customers state-wise.
Result set should have a state named "State" and its corresponding average credit limit named "Average Credit Limit".
*/
select state as "State", avg(creditLimit) as 'Average Credit Limit'
from customers
group by state;

/*
Further you want to analyze the daily payment schedule. Write a query to find out the maximum amount paid each day.
The result set should have payment date and its corresponding maximum amount of payment made that day.
*/
select paymentDate, max(amount)
from payments 
group by paymentDate;

/*
Consider the payments table in classicmodels database. It stores payments made by customers based on their accounts.
Payments table
Now you want to look at the payments made by the customers. Write a SQL Query to get sum of price paid by customerNumber 473 on 2003-10-27 from payments table;
*/
select sum(amount)
from payments
where customerNumber = 473 and paymentDate = '2003-10-27';

/*
Given below are the details about the employees' table.
Your task is to show the average salary rounded off two zero decimal places after grouping it based on jobid and then on departmentid.
*/
select 
    job_id AS "Job ID", 
    department_id AS "Department ID", 
    ROUND(avg(salary)) AS "Average Salary" 
from employees
group by job_id, department_id;

/*
Given below are the details about the employees' table.
Your task is to find the sum of salary, maximum hire date and the number of employees after grouping the data based on jobid and departmentid.
*/
select
    job_id AS "Job ID", 
    sum(salary) AS "Sum of Salary", 
    max(hire_date) AS "Latest Hire Date", 
    count(*) AS "Number of Employees" 
from employees
group by job_id,department_id;

/*
Given below is the details about the products table. products table stores a list of scale model cars.
Table- products
As researched before there are multiple products available with different retail prices. You want to look at the information in the products table with respect to the MSRP. Write a query to print all the details of all the products in descending order of their MSRP.
*/
select *
from products
order by MSRP desc;

/*
Given below are the details about the products table. the products table stores a list of scale model cars.
Table- products
The company has various products with different availability status. Write a Query to find out all the productLine and their respective total QuantityInStock where QuantityInStock for each ProductLine is greater than 50000.
*/
select 
    productLine AS "Product Line",
    SUM(quantityInStock) as "Sum of Stocks" 
from products
group by productLine
having SUM(quantityInStock) > 50000;

/*
Given below is the details about the products table. products table stores a list of scale model cars.
Table- products
Result obtained from the last query is randomly distributed. You want to represent the result in a more structured manner. Write a SQL Query to list the productLines that has quantity in stock more than 50000 and then Sort the result in increasing order of quantity.
*/
select
    productLine AS "Product Line",
    SUM(quantityInStock) as "Sum of Stocks"
from products
group by productLine
having SUM(quantityInStock) > 50000
order by SUM(quantityInStock) asc;

/*
Your task is to find the first_name and the last_name of all the employees whose salary is greater than 10000 and is not having job id's ('SA_MAN', 'SA_REP'). Also, order the results based on first_name.
*/
select first_name, last_name
from employees
where salary > 10000 and job_id not in ('SA_MAN', 'SA_REP')
order by first_name asc;

/*
Given below are the details about the employees' table.
Your task is to find the average salary and the count of employees after grouping the data firstly on jobid and then on "departmentid". Also, order the results based on the count of employees in decreasing order.
*/
select 
    job_id AS "Job ID", 
    department_id AS "Department ID", 
    avg(salary) AS "Average Salary", 
    count(employee_id) AS "Number of Employees" 
from employees
group by job_id, department_id
order by count(employee_id) desc;

/*
Given below are the details about the employees' table.
Your task is to find the average salary greater than "10000" for all the employees whose managerid is "101" and the results should be grouped by jobid.
*/
select
    job_id as "Job ID", 
    round(avg(salary)) AS "Average Salary" 
from employees
where manager_id = 101
group by job_id
having avg(salary) > 10000;

/*
Analyze the employees table. employees table is one of the tables in classicmodels database. It stores all employee information as well as the organization structure such as who reports to whom.
employees Table
You want to segment the employees with respect to their post. Write a SQL Query to Get employeeNumber of President and VP of sales.
*/
select employeeNumber
from employees
where jobTitle IN ('President','VP Sales');

/*
Analyze the employees table.
employees Table
You want to send in the reports of all the employees to the President and VP of sales.
Write a SQL Query to get the employee number of those employees who don't report to President and VP sales.
*/
SELECT 
    employeeNumber
FROM
    employees
WHERE
    reportsTo NOT IN (1002 , 1056);
    
/*
Given below is the details about the products table. products table stores a list of scale model cars.
Table- products
Write a SQL Query to get different product Lines except 'Ships' and 'Planes' whose MSRP is in between 50 and 90.
*/
select distinct(productLine)
from products
where productLine NOT IN ('Ships','Planes') and MSRP between 50 and 90
order by productLine;

/*
Given below are the details of the “products” table. It stores a list of scale model cars.
Table- products
Find the distinct productLine where the quantityInStock is not in the range 80 to 8000, and MSRP is between 50 and 90.
*/
select DISTINCT(productLine)
from products
where quantityInStock not between 80 and 8000 and MSRP between 50 and 90
order by productLine asc;


/*
Analyze the employees' table. It stores all employee information as well as the organization structure such as who reports to whom.
employees Table
The sales manager is analyzing the employees which report to him alphabetically. Write a SQL Query to get details of those employees whose first name starts with ‘L’ and reports to 1143.
The result set should have the first and last name of the employees
*/
select firstName, lastName
from employees 
where firstName like 'L%' and reportsTo = 1143;

/*
Analyze the employees table.
employees Table
The sales manager next wants to retrieve the data of all the employees in the company with a particular type of email. Retrieve the first name and last name of only those employees who have @classicmodelcars in their email address.
*/
select firstName, lastName
from employees
where email like '%@classicmodelcars%';

/*
Given below are the details about the employees' table.
Your task is to find the sum of salary, the maximum hire date and the count of employees grouped by the jobid only for the following jobids
*/
select 
    job_id AS "Job ID", 
    sum(salary) AS "Sum of Salary", 
    max( hire_date) AS "Latest Hire Date", 
    count(employee_id) AS "Number of Employees"
from employees
where job_id in('IT_PROG', 'ST_MAN', 'AC_ACCOUNT')
group by job_id
order by job_id desc;