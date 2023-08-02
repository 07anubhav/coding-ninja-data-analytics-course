show databases;
show tables;
describe faculty; 

create table student(
	ID int,
    Name varchar(30),
    Age int
);

create table faculty(
	Faculty_ID int primary key,
    Name varchar(100),
    Course varchar(20) not null,
    Salary int default 10000
);

