use classicmodels;
show tables;
desc orders;

SELECT 
    *
FROM
    orders
where orderNumber > 10420;

SELECT 
    *
FROM
    orders
where orderNumber > 10420 and orderNumber < 10429;

SELECT 
    *
FROM
    orders
WHERE
    orderDate >= '2005-05-01'
        AND orderDate <= '2005-05-15';

select sysdate();