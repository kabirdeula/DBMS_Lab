# Perform Sorting Operations.

## ORDER BY ASC
---
```sql
SELECT * FROM student
WHERE stu_faculty = 'BCA'
ORDER BY stu_name;
```

### Output

---
| stu_id | stu_name        | stu_address | stu_faculty | stu_gender | percentage |
| :----- | :-------------- | :---------- | :---------- | :--------- | ---------: |
| 127    | Bibek Karki     | Ilam        | BCA         | Male       |         82 | 
| 101    | Bijina Maharjan | Kathmandu   | BCA         | Female     |         20 |
| 102    | Kabir Deula     | Kathmandu   | BCA         | Male       |         42 |
| 115    | Romit Manandhar | Kathmandu   | BCA         | Male       |         44 |
| 116    | Sagun Ghimire   | Kathmandu   | BCA         | Male       |         73 |
---

## ORDER BY DESC
---
```sql
SELECT * FROM student
WHERE stu_faculty = 'BBM'
ORDER BY stu_name DESC;
```

### Output

---
| stu_id | stu_name              | stu_address | stu_faculty | stu_gender | percentage |
| :----- | :-------------------- | :---------- | :---------- | :--------- | ---------: |
| 111    | Srijana Maharjan      | Kathmandu   | BBM         | Female     |         19 |
| 112    | Smriti Maharjan       | Kathmandu   | BBM         | Female     |         65 |
| 121    | Sanju Mishra          | Bhojpur     | BBM         | Female     |         78 |
| 113    | Samman Narsingh Suwal | Lalitpur    | BBM         | Male       |         71 |
| 106    | Rojina Ruwali         | Dharan      | BBM         | Female     |         72 |
---
