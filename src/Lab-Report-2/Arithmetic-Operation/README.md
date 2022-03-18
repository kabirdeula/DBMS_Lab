# Perform Arithmetic Operations.

## Addition
---
```sql
SELECT stu_id, stu_name, stu_address, stu_faculty, stu_gender, percentage + 10
FROM student;
```

### Output

---
| stu_id | stu_name         | stu_address | stu_faculty | stu_gender | percentage + 10 |
| :----- | :--------------- | :---------- | :---------- | :--------- | --------------: |
| 101    | Bijina Maharjan  | Kathmandu   | BCA         | Female     |              30 |
| 102    | Kabir Deula      | Kathmandu   | BCA         | Male       |              52 |
| 103    | Deepali Adhikari | Ilam        | BBM         | Female     |              14 | 
| 101    | Ashma Pahari     | Sarlahi     | BBM         | Female     |              86 |
| 101    | Depen Tuladhar   | Kathmandu   | BTTM        | Male       |              81 |
---

## Subtraction
---
```sql
SELECT stu_id, stu_name, stu_address, stu_faculty, stu_gender, percentage - 5
FROM student;
```

### Output

---
| stu_id | stu_name         | stu_address | stu_faculty | stu_gender | percentage - 5 |
| :----- | :--------------- | :---------- | :---------- | :--------- | -------------: |
| 101    | Bijina Maharjan  | Kathmandu   | BCA         | Female     |             15 |
| 102    | Kabir Deula      | Kathmandu   | BCA         | Male       |             37 |
| 103    | Deepali Adhikari | Ilam        | BBM         | Female     |             -1 | 
| 101    | Ashma Pahari     | Sarlahi     | BBM         | Female     |             71 |
| 101    | Depen Tuladhar   | Kathmandu   | BTTM        | Male       |             66 |
---

## Multiplication
---
```sql
SELECT stu_id, stu_name, stu_address, stu_faculty, stu_gender, percentage * 3
FROM student;
```

### Output

---
| stu_id | stu_name         | stu_address | stu_faculty | stu_gender | percentage * 3 |
| :----- | :--------------- | :---------- | :---------- | :--------- | -------------: |
| 101    | Bijina Maharjan  | Kathmandu   | BCA         | Female     |             60 |
| 102    | Kabir Deula      | Kathmandu   | BCA         | Male       |            126 |
| 103    | Deepali Adhikari | Ilam        | BBM         | Female     |             12 | 
| 101    | Ashma Pahari     | Sarlahi     | BBM         | Female     |            228 |
| 101    | Depen Tuladhar   | Kathmandu   | BTTM        | Male       |            213 |
---

## Division
---
```sql
SELECT stu_id, stu_name, stu_address, stu_faculty, stu_gender, percentage / 2
FROM student;
```

### Output

---
| stu_id | stu_name         | stu_address | stu_faculty | stu_gender | percentage / 2 |
| :----- | :--------------- | :---------- | :---------- | :--------- | -------------: |
| 101    | Bijina Maharjan  | Kathmandu   | BCA         | Female     |        10.0000 |
| 102    | Kabir Deula      | Kathmandu   | BCA         | Male       |        21.0000 |
| 103    | Deepali Adhikari | Ilam        | BBM         | Female     |         2.0000 | 
| 101    | Ashma Pahari     | Sarlahi     | BBM         | Female     |        38.0000 |
| 101    | Depen Tuladhar   | Kathmandu   | BTTM        | Male       |        35.5000 |
---

## Modulus
---
```sql
SELECT stu_id, stu_name, stu_address, stu_faculty, stu_gender, percentage % 1.5
FROM student;
```

### Output

---
| stu_id | stu_name         | stu_address | stu_faculty | stu_gender | percentage % 1.5 |
| :----- | :--------------- | :---------- | :---------- | :--------- | ---------------: |
| 101    | Bijina Maharjan  | Kathmandu   | BCA         | Female     |              0.5 |
| 102    | Kabir Deula      | Kathmandu   | BCA         | Male       |              0.0 |
| 103    | Deepali Adhikari | Ilam        | BBM         | Female     |              1.0 | 
| 101    | Ashma Pahari     | Sarlahi     | BBM         | Female     |              1.0 |
| 101    | Depen Tuladhar   | Kathmandu   | BTTM        | Male       |              0.5 |
---


