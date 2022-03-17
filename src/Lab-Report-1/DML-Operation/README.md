## Insert data into the table.

---
```sql
CREATE TABLE student(
    stu_id INT PRIMARY KEY NOT NULL,
    stu_name VARCHAR(50) NOT NULL,
    stu_address VARCHAR(100) NOT NULL,
    stu_faculty VARCHAR(10) NOT NULL
);

INSERT INTO student VALUES
(101, 'Bijina Maharjan', 'Kathmandu', 'BCA'),
(102, 'Kabir Deula', 'Kathmandu', 'BCA'),
(103, 'Neha Gurung', 'Kathmandu', 'BBS'),
(104, 'Rojina Ruwali', 'Sindhupalchok', 'BBM'),
(105, 'Smriti Maharjan', 'Kathmandu', 'BBM'),
(106, 'Nikita Shahi', 'Kathmandu', 'BBS'),
(107, 'Deepali Adhikari', 'Gorkha', 'BBM');
```

### Output

---
| stu_id | stu_name         | stu_address     | stu_faculty |
| :----- | :--------------- | :-------------- | :---------- |
| 101    | Bijina Maharjan  | Kathmandu       | BCA         |
| 102    | Kabir Deula      | Kathmandu       | BCA         |
| 103    | Neha Gurung      | Kathmandu       | BBS         |
| 104    | Rojina Ruwali    | Sindhupalchok   | BBM         |
| 105    | Smriti Maharjan  | Kathmandu       | BBM         |
| 106    | Nikita Shahi     | Kathmandu       | BBS         |
| 107    | Deepali Adhikari | Gorkha          | BBM         |
---

## Update data into table:
---
```sql
UPDATE student 
SET stu_address = 'Ilam'
WHERE stu_id = 104; 
```
### Output:

---
| stu_id | stu_name         | stu_addres | stu_faculty |
| :----- | :--------------- | :--------- | :---------- |
| 101    | Bijina Maharjan  | Kathmandu  | BCA         |
| 102    | Kabir Deula      | Kathmandu  | BCA         |
| 103    | Neha Gurung      | Kathmandu  | BBS         |
| 104    | Rojina Ruwali    | Ilam       | BBM         |
| 105    | Smriti Maharjan  | Kathmandu  | BBM         |
| 106    | Nikita Shahi     | Kathmandu  | BBS         |
| 107    | Deepali Adhikari | Gorkha     | BBM         |
---

## Delete data from table:
---
```sql
DELETE FROM student
WHERE stu_id = 102;
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
| 107    | Deepali Adhikari | Gorkha     | BBM         |
---
