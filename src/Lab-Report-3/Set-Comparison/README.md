# Perform Set Comparison.

---
```sql
SELECT stu_id, stu_name, percentage
FROM student
WHERE percentage > ALL(
    SELECT percentage 
    FROM student
    WHERE stu_faculty = 'BCA'
);
```

### Output

---
| stu_id | stu_name          | percentage |
| :----- | :---------------- | ---------: |
| 114    | Prajita KC        |         97 |
| 125    | Nikita Shahi      |         84 |
| 130    | Aayushma Adhikari |         83 |
---