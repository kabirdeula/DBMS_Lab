# Perform List Operations.

## IN
---
```sql
SELECT * FROM student
WHERE stu_address IN ('Kathmandu', 'Bhaktapur', 'Lalitpur');
```

### Output

---
| stu_id | stu_name         | stu_address | stu_faculty | stu_gender | percentage |
| :----- | :--------------- | :---------- | :---------- | :--------- | ---------: |
| 101    | Bijina Maharjan  | Kathmandu   | BCA         | Female     |         20 |
| 102    | Kabir Deula      | Kathmandu   | BCA         | Male       |         42 |
| 105    | Depen Tuladhar   | Kathmandu   | BTTM        | Male       |         71 | 
| 107    | Sanisha Maharjan | Kathmandu   | Bsc.Csit    | Female     |         58 |
| 110    | Ayushma Shrestha | Kathmandu   | BBM         | Female     |         44 |
---

## NOT IN
---
```sql
SELECT * FROM student
WHERE stu_address NOT IN ('Kathmandu', 'Bhaktapur', 'Lalitpur');
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
