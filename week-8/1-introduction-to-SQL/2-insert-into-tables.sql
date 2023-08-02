insert into student values
(101,'Anubhav',23),
(102,"Suman",20);

insert into student (ID,Name)
values
(103,'Nikhil');

insert into student (Name,ID)
values
('Aman',105);

select * from student;

-- ------------------------------------------------------------------------------------------------
insert into faculty 
values
(101,'ABC','Hindi',20000);

insert into faculty (Faculty_ID,Name,Course)
values
(102,'XYZ','Maths');

select * from faculty;