# Perform Range Operations.

## BETWEEN
---
```sql
SELECT * FROM student
WHERE percentage BETWEEN 10 AND 30;
```

### Output

---
| stu_id | stu_name          | stu_address | stu_faculty | stu_gender | percentage |
| :----- | :---------------- | :---------- | :---------- | :--------- | ---------: |
| 101    | Bijina Maharjan   | Kathmandu   | BCA         | Female     |         20 | 
| 107    | Srijana Maharjan  | Kathmandu   | BBM         | Female     |         19 |
| 110    | Shirish Manandhar | Kathmandu   | BIM         | Male       |         28 |
---

## NOT BETWEEN
---
```sql
SELECT * FROM student
WHERE percentage NOT BETWEEN 40 AND 60;
```

### Output

---
| stu_id | stu_name         | stu_address | stu_faculty | stu_gender | percentage |
| :----- | :--------------- | :---------- | :---------- | :--------- | ---------: |
| 102    | Kabir Deula      | Kathmandu   | BCA         | Male       |         42 |
| 103    | Deepali Adhikari | Ilam        | BBM         | Female     |          4 |
| 104    | Ashma Pahari     | Sarlahi     | BBM         | Female     |         76 |
| 105    | Depen Tuladhar   | Kathmandu   | BTTM        | Male       |         71 |
| 106    | Rojina Ruwali    | Dharan      | BBM         | Female     |         72 |
---
