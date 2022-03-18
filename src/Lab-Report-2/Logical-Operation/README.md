# Perform Logical Operations.

## AND

---
```sql
SELECT * 
FROM student
WHERE stu_address = 'Kathmandu'
AND stu_faculty = 'BCA';
```

### Output

---
| stu_id | stu_name         | stu_address | stu_faculty | stu_gender | percentage |
| -----: | :--------------- | :---------- | :---------- | :--------- | ---------: |
| 101    | Bijina Maharjan  | Kathmandu   | BCA         | Female     | 20         |
| 102    | Kabir Deula      | Kathmandu   | BCA         | Male       | 42         |
| 115    | Romit Manandhar  | Kathmandu   | BCA         | Male       | 44         | 
| 116    | Sagun Ghimire    | Kathmandu   | BCA         | Male       | 73         |
| 120    | Sanisha Maharjan | Kathmandu   | BCA         | Female     | 70         |
---

## OR

---
```sql
SELECT *
FROM student
WHERE stu_faculty = 'BBM'
OR stu_gender = 'Female';
```

### Output

---
| stu_id | stu_name         | stu_address | stu_faculty | stu_gender | percentage |
| -----: | :--------------- | :---------- | :---------- | :--------- | ---------: |
| 101    | Bijina Maharjan  | Kathmandu   | BCA         | Female     | 20         |
| 103    | Deepali Adhikari | Ilam        | BBM         | Female     | 4          |
| 110    | Ayushma Shrestha | Kathmandu   | BBM         | Female     | 44         | 
| 111    | Srijana Maharjan | Kathmandu   | BBM         | Female     | 19         |
| 112    | Smriti Maharjan  | Kathmandu   | BBM         | Female     | 65         |
---

## NOT

---
```sql
SELECT *
FROM student
WHERE stu_address 
NOT LIKE 'K%';
```
### Output

---
| stu_id | stu_name          | stu_address | stu_faculty | stu_gender | percentage |
| -----: | :---------------- | :---------- | :---------- | :--------- | ---------: |
| 103    | Deepali Adhikari  | Ilam        | BBM         | Female     | 4          |
| 104    | Ashma Pahari      | Sarlahi     | BBM         | Female     | 76         |
| 106    | Rojina Ruwali     | Dharan      | BBM         | Female     | 72         | 
| 108    | Nandita Rauniyar  | Biratnagar  | Bsc.Csit    | Female     | 44         |
| 109    | Kanchan Karki     | Dhankuta    | BBM         | Female     | 47         |
---
