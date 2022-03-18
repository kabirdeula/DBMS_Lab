# Perform Comparison Operations.

## Greater Than (>)
---
```sql
SELECT * 
FROM student
WHERE percentage > 30;
```

### Output

---
| stu_id | stu_name         | stu_address | stu_faculty | stu_gender | percentage |
| :----- | :--------------- | :---------- | :---------- | :--------- | ---------: |
| 102    | Kabir Deula      | Kathmandu   | BCA         | Male       |         42 |
| 104    | Ashma Pahari     | Sarlahi     | BBM         | Female     |         76 |
| 105    | Depen Tuladhar   | Kathmandu   | BTTM        | Male       |         71 | 
| 106    | Rojina Ruwali    | Dharan      | BBM         | Female     |         72 |
| 107    | Sanisha Maharjan | Kathmandu   | Bsc.Csit    | Female     |         58 |
---

## Less Than (<)
---
```sql
SELECT *
FROM student
WHERE percentage < 52;
```

### Output

---
| stu_id | stu_name         | stu_address | stu_faculty | stu_gender | percentage |
| :----- | :--------------- | :---------- | :---------- | :--------- | ---------: |
| 101    | Bijina Maharjan  | Kathmandu   | BCA         | Female     |         20 |
| 102    | Kabir Deula      | Kathmandu   | BCA         | Male       |         42 |
| 103    | Deepali Adhikari | Ilam        | BBM         | Female     |          4 | 
| 108    | Nandita Rauniyar | Biratnagar  | Bsc.Csit    | Female     |         44 |
| 109    | Kanchan Karki    | Dhankuta    | BBM         | Female     |         47 |
---

## Greater Than or Equals To (>=)
---
```sql
SELECT * 
FROM student
WHERE percentage >= 14;
```

### Output

---
| stu_id | stu_name         | stu_address | stu_faculty | stu_gender | percentage |
| :----- | :--------------- | :---------- | :---------- | :--------- | ---------: |
| 101    | Bijina Maharjan  | Kathmandu   | BCA         | Female     |         20 |
| 102    | Kabir Deula      | Kathmandu   | BCA         | Male       |         42 |
| 104    | Ashma Pahari     | Sarlahi     | BBM         | Female     |         76 |
| 105    | Depen Tuladhar   | Kathmandu   | BTTM        | Male       |         71 | 
| 106    | Rojina Ruwali    | Dharan      | BBM         | Female     |         72 |
---

## Less Than or Equals To (<=)
---
```sql
SELECT * 
FROM student
WHERE percentage <= 86;
```

### Output

---
| stu_id | stu_name         | stu_address | stu_faculty | stu_gender | percentage |
| :----- | :--------------- | :---------- | :---------- | :--------- | ---------: |
| 101    | Bijina Maharjan  | Kathmandu   | BCA         | Female     |         20 |
| 102    | Kabir Deula      | Kathmandu   | BCA         | Male       |         42 |
| 103    | Deepali Adhikari | Ilam        | BBM         | Female     |          4 | 
| 104    | Ashma Pahari     | Sarlahi     | BBM         | Female     |         76 |
| 105    | Depen Tuladhar   | Kathmandu   | BTTM        | Male       |         71 | 
---

## Equals To (=)
---
```sql
SELECT * 
FROM student
WHERE stu_faculty = 'BCA';
```

### Output

---
| stu_id | stu_name         | stu_address | stu_faculty | stu_gender | percentage |
| :----- | :--------------- | :---------- | :---------- | :--------- | ---------: |
| 101    | Bijina Maharjan  | Kathmandu   | BCA         | Female     |         20 |
| 102    | Kabir Deula      | Kathmandu   | BCA         | Male       |         42 |
| 115    | Romit Manandhar  | Kathmandu   | BCA         | Male       |         44 |
| 116    | Sagun Ghimire    | Kathmandu   | BCA         | Male       |         73 | 
| 120    | Sanisha Maharjan | Kathmandu   | BCA         | Female     |         70 |
---

## Not Equals To (<>)
---
```sql
SELECT *
FROM student
WHERE stu_address <> 'Kathmandu';
```

### Output

---
| stu_id | stu_name         | stu_address | stu_faculty | stu_gender | percentage |
| :----- | :--------------- | :---------- | :---------- | :--------- | ---------: |
| 103    | Deepali Adhikari | Ilam        | BBM         | Female     |          4 |
| 104    | Ashma Pahari     | Sarlahi     | BBM         | Female     |         76 | 
| 106    | Rojina Ruwali    | Dharan      | BBM         | Female     |         72 |
| 108    | Nandita Rauniyar | Biratnagar  | Bsc.Csit    | Female     |         44 |
| 109    | Kanchan Karki    | Dhankuta    | BBM         | Female     |         47 |
---
