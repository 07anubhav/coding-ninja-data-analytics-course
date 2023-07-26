desc student;

alter table student 
add 
(Address varchar(100));

alter table student
add
(Email_ID varchar(100), ContactNo varchar(15));

alter table student
add
(Test int default 100);

SELECT 
    *
FROM
    student;
-- ----------------------------------------------------------------------------------

alter table student
modify
ContactNo int(11);

alter table student
change
Address Location varchar(100);

alter table student
drop column
Test;

alter table student
drop column Email_ID,
drop column ContactNo;

SELECT 
    *
FROM
    student
where Name='anubhav';
