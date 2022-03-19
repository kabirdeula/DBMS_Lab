# Perform Sub Query.

---
```sql
SELECT stu_id, stu_name, percentage
FROM student 
WHERE percentage > (
    SELECT AVG(percentage)
    FROM student
);
```

### Output

---
| stu_id | stu_name         | percentage |
| :----- | :--------------- | ---------: |
| 104    | Ashma Pahari     |         76 |
| 105    | Depen Tuladhar   |         71 | 
| 106    | Rojina Ruwali    |         72 |
| 112    | Smriti Maharjan  |         65 |
| 114    | Prajita KC       |         97 |
---