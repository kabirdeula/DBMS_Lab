# Perform String Operations.

## %
---
```sql
SELECT * FROM student
WHERE stu_name LIKE 'S%'
ORDER BY stu_name;
```

### Output

---
| stu_id | stu_name              | stu_address | stu_faculty | stu_gender | percentage |
| :----- | :-------------------- | :---------- | :---------- | :--------- | ---------: |
|    116 | Sagun Ghimire         | Kathmandu   | BCA         | Male       |         73 |
|    117 | Saloni Shrestha       | Bhaktapur   | BIM         | Female     |         41 |
|    113 | Samman Narsingh Suwal | Lalitpur    | BBM         | Male       |         71 |
|    107 | Sanisha Maharjan      | Kathmandu   | Bsc.Csit    | Female     |         58 |
|    120 | Sanisha Maharjan      | Kathmandu   | BCA         | Female     |         70 |
---


## [^]
---
```sql
SELECT * FROM student
WHERE stu_name LIKE '[^aeiou]$';
```

### Output

---
| stu_id | stu_name         | stu_address | stu_faculty | stu_gender | percentage |
| :----- | :--------------- | :---------- | :---------- | :--------- | ---------: |
| 101    | Bijina Maharjan  | Kathmandu   | BCA         | Female     |         20 |
| 105    | Depen Tuladhar   | Kathmandu   | BTTM        | Male       |         71 | 
| 107    | Sanisha Maharjan | Kathmandu   | Bsc.Csit    | Female     |         58 |
| 108    | Nandita Rauniyar | Biratnagar  | Bsc.Csit    | Female     |         44 |
| 111    | Srijana Maharjan | Kathmandu   | BBM         | Female     |         19 |
---

