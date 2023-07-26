use school;

SELECT 
    *
FROM
    faculty;

/*Will update all row salary*/
UPDATE faculty 
SET 
    Salary = 5000;

/*Will update specific row*/
UPDATE faculty 
SET 
    Salary = 10000
WHERE
    Faculty_ID = 101;
    
-- -----------------------------------
DELETE FROM faculty 
WHERE
    Salary = 10000;

TRUNCATE faculty;

DROP TABLE faculty;

desc products;