# Perform Group By Operations.

## Group By
---
```sql
SELECT COUNT(stu_id), stu_address
FROM student
GROUP BY stu_address;
```

### Output

---
| COUNT(stu_id) | stu_address | 
| ------------: | :---------- |
|             1 | Bhaktapur   | 
|             2 | Bhojpur     |
|             1 | Biratnagar  |
|             1 | Dhankuta    |
|             1 | Dharan      |
---
