## Displaying all the data of the table.

---
```SQL
SELECT * FROM student;
```

### Output

---
| stu_id | stu_name         | stu_addres | stu_faculty |
| :----- | :--------------- | :--------- | :---------- |
| 101    | Bijina Maharjan  | Kathmandu  | BCA         |
| 103    | Neha Gurung      | Kathmandu  | BBS         |
| 104    | Rojina Ruwali    | Ilam       | BBM         |
| 105    | Smriti Maharjan  | Kathmandu  | BBM         |
| 106    | Nikita Shahi     | Kathmandu  | BBS         |
| 107    | Deepali Adhikari | Gorkha     | BBM         |
---

## Displaying all specified using where clauses.

---
```sql
SELECT * FROM student WHERE stu_faculty = 'BBM';
```

### Output

---
| stu_id | stu_name         | stu_addres | stu_faculty |
| :----- | :--------------- | :--------- | :---------- |
| 104    | Rojina Ruwali    | Ilam       | BBM         |
| 105    | Smriti Maharjan  | Kathmandu  | BBM         |
| 107    | Deepali Adhikari | Gorkha     | BBM         |
---

## Displaying distinct records from the table.

---
```SQL
SELECT DISTINCT stu_faculty FROM student;
```

### Output:

---
| stu_faculty |
| :---------- |
| BBM         |
| BBM         |
| BBM         |
---

## Displaying top 5 records from table.

---
```sql
SELECT * FROM student LIMIT 5;
```

### Output:

---
| stu_id | stu_name         | stu_addres | stu_faculty |
| :----- | :--------------- | :--------- | :---------- |
| 101    | Bijina Maharjan  | Kathmandu  | BCA         |
| 103    | Neha Gurung      | Kathmandu  | BBS         |
| 104    | Rojina Ruwali    | Ilam       | BBM         |
| 105    | Smriti Maharjan  | Kathmandu  | BBM         |
| 106    | Nikita Shahi     | Kathmandu  | BBS         |
---