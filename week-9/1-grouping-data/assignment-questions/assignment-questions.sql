/*
You have been provided with the employee_data table. The sample for this table is provided below.
employee_data
Problem Statement
Fetch the number of employees for each role/Job.
*/
select Job, count(*) as empnum
from employee_data 
group by Job;

/*
List out the number of employees for each distinct role corresponding with their department code.
*/
select Job, DeptCode, count(*) as number_of_employees
from employee_data
group by Job, DeptCode;

/*
List down the minimum salaries offered for each job role in each department, also list them in descending order based on the max salaries being offered for that role.
*/
select Job, DeptCode, min(Salary)
from employee_data
group by Job, DeptCode
order by max(Salary) desc;

/*
List down the jobs having an average salary more than 3000 USD.
*/
select Job
from employee_data
group by Job
having avg(salary) > 3000;

/*
List down the department's codes that pay their employees (combined) more than 5000 USD and list them in ascending order of the minimum salary offered by each department.
*/
select DeptCode
from employee_data
group by DeptCode
having sum(Salary) > 5000
order by min(Salary) asc;

/*
List down the managers handling more than 2 employees, and make sure those employees don’t belong to departments 10 and 20. 
*/
select Manager, count(*) as 'Number of Employees'
from employee_data
where DeptCode not in (10,20)
group by Manager
having count(*) > 2;