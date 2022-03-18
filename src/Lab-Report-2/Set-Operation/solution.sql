SELECT stu_address FROM stu_bca
UNION
SELECT stu_address FROM stu_bbm
ORDER BY stu_address;

SELECT stu_address FROM stu_bca
UNION ALL
SELECT stu_address FROM stu_bbm
ORDER BY stu_address;

SELECT stu_address FROM stu_bca
INTERSECT
SELECT stu_address FROM stu_bbm
ORDER BY stu_address;

SELECT stu_address FROM stu_bbm
EXCEPT
SELECT stu_address FROM stu_bca
ORDER BY stu_address;