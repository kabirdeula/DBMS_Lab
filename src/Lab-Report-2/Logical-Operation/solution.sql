SELECT * 
FROM student
WHERE stu_address = 'Kathmandu'
AND stu_faculty = 'BCA';

SELECT *
FROM student
WHERE stu_faculty = 'BBM'
OR stu_gender = 'Female';

SELECT *
FROM student
WHERE stu_address 
NOT LIKE 'K%';