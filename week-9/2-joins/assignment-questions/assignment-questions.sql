/*
Enlist all the employees ID's, names along with the Project allocated to them.
*/
select employee.EmpID,employee.EmpFname,employee.EmpLname,project.ProjectID,project.ProjectName
from employee
inner join project
on employee.EmpID = project.EmpID;

/*
Fetch out all the employee ID’s and their contact detail who have been working from Delhi or have clients in Kolkata.
*/
select employee.EmpID,employee.EmailID,employee.PhoneNo,client_d.ClientFname,client_d.ClientLname
from employee
inner join client_d
on employee.EmpID = client_d.EmpID
where employee.City = 'Delhi' or client_d.city = 'Kolkata';

/*
List out all the project names with corresponding client’s email id, for all the projects that were allocated after April 2021 and order them in descending order of the age of clients.
*/
select p.ProjectName, c.ClientEmailID
from project p
left join client_d c
on p.ClientID = c.ClientID
where p.ProjectStartDate > '2021-04-30'
order by c.Age desc;

/*
Fetch out each project allocated to which employee.
*/
select e.EmpFname, e.EmpLname, p.ProjectID, p.ProjectName
from project p 
right join employee e
on p.EmpID = e.EmpID;	

/*
List out all the projects along with the employee's name and their respective allocated email ID.
*/
select p.ProjectID, p.ProjectName, e.EmpFname, e.EmpLname, e.EmailID
from project p 
left join employee e
on p.EmpID = e.EmpID;

/*
List out all the client details email address, whose age is between 25 to 35, along with the projects assigned to them in ascending order of their age and project ID. Also, use c for client_d and p for project, as alias name of tables.
*/
select c.ClientID, c.ClientFname, c.ClientLname, c.ClientEmailID, p.ProjectID, p.ProjectName
from project p
inner join client_d c
on p.ClientID = c.ClientID
where c.Age between 25 and 35
order by c.age,p.ProjectID asc;

/*
List out all the combinations possible for the employee’s name and projects that can exist(NULL included).
*/
select e.EmpFname, e.EmpLname, p.ProjectID
from project p
cross join employee e;