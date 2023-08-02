/*
Create 2 tables
Students
Columns - 
RollNumber (integer)
sName (varchar, max length- 50)
Address (varchar, max length- 100)
ContactNumber (varchar, max length- 15)
RollNumber - Primary Key

Faculties
Columns - 
FacultyId (integer)
fName (varchar, max length- 50)
class (varchar, max length- 25)
email (varchar, max length- 100)
FacultyId - Primary Key
fName - Not null
*/

create table Students(
    RollNumber int primary key,
    sName varchar(50),
    Address varchar(100),
    ContactNumber varchar(15)
);

create table Faculties(
    FacultyId int primary key,
    fName varchar(50) not null,
    class varchar(25),
    email varchar(100)
);

DESC Students;
DESC Faculties;

/*
Table- Students
RollNumber | sName | Address | Contact Number |
values:
(12, 'Abhishek', 'New Delhi', '658689489')
(25, 'Aman', 'Bengaluru', '3256987412')
(36, 'Anshul', 'Hyderabad', '258746985')
(65, 'Anand', 'Kolkata', '236541987')
(69, 'Abhishek', 'New Delhi', '254136854')
Table-Faculties
FacultyId | fName | class | email
values:
(1,'Shah', 'Math', 'shah@xyz.com')
(2,'Kumar', 'Hindi', 'kumar@xyz.com')
(3,'Dahiya', 'English', 'dahiya@xyz.com')
(4,'Gairols', 'Science', 'gairols@xyz.com')
*/
insert into Students (RollNumber,sName,Address,ContactNumber)
values
(12, 'Abhishek', 'New Delhi', '658689489'),
(25, 'Aman', 'Bengaluru', '3256987412'),
(36, 'Anshul', 'Hyderabad', '258746985'),
(65, 'Anand', 'Kolkata', '236541987'),
(69, 'Abhishek', 'New Delhi', '254136854');

insert into Faculties (FacultyId,fName,class,email)
values
(1,'Shah', 'Math', 'shah@xyz.com'),
(2,'Kumar', 'Hindi', 'kumar@xyz.com'),
(3,'Dahiya', 'English', 'dahiya@xyz.com'),
(4,'Gairols', 'Science', 'gairols@xyz.com');

SELECT * FROM Students;
SELECT * FROM Faculties;

/*
Add new column 'DOB' for storing the Date of Birth of the students in Students table.
  DOB- date type
*/
alter table Students
add
(DOB date);

desc Students;

/*
Delete Column-ContactNumber of table- Students.
*/
alter table Students
drop column
ContactNumber;

desc Students;

/*
Update Column type of 'DOB' column from table-Students to year data type.
Data type year is going to hold a year in a two- or four-digit format.
*/
alter table Students
modify
DOB year;

desc Students;

/*
Rename column 'sName' to 'FullName' in Students table.
*/
alter table Students
change
sName FullName varchar(50);

desc Students;