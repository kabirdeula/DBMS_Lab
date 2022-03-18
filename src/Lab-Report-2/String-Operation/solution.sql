SELECT * FROM student
WHERE stu_name LIKE 'S%'
ORDER BY stu_name;

SELECT * FROM student
WHERE stu_name REGEXP '[^aeiou]$';