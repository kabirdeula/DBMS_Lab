SELECT stu_id, stu_name, percentage
FROM student 
WHERE percentage > (
    SELECT AVG(percentage)
    FROM student
);