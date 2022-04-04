# Join Operation.

## Create Three Tables.

---
```sql
CREATE TABLE Teacher(
    tID INT PRIMARY KEY AUTO_INCREMENT,
    tName VARCHAR(50) NOT NULL,
    tAddress VARCHAR(100) NOT NULL,
    phone VARCHAR(10) NOT NULL,
    age INT(3) NOT NULL
);
```

```sql
CREATE TABLE Subject(
    sID INT PRIMARY KEY AUTO_INCREMENT,
    sName VARCHAR(100) NOT NULL,
    semester INT(5) NOT NULL
);
```

```sql
CREATE TABLE Teach(
    tID INT,
    sID INT,
    FOREIGN KEY (tID) REFERENCES Teacher(tID),
    FOREIGN KEY (sID) REFERENCES Subject(sID)
);
```
---

## Self Join

---
```sql
SELECT tName Teacher, sName Subject
FROM Teacher T, Subject S, Teach X
WHERE T.tID = X.tID AND S.sID = X.sID AND S.semester = 1;
```

### Output

---
|         Teacher         |                Subject                 |
| :---------------------- | :------------------------------------- |
| Laxmi Adhikari          | English I                              |
| Ram Pokhrel             | Sociology                              | 
| Raju Dharel             | Mathematics I                          | 
| Dinesh Khadka           | Computer and Fundamental Applications  |
| Saroj Thapa             | Digital Logic                          |
---

## Inner Join

---
```sql
SELECT tName Teacher, sName Subject
FROM ((Teach
INNER JOIN Teacher ON Teach.tID = Teacher.tID)
INNER JOIN Subject ON Teach.sID = Subject.sID)
WHERE Subject.semester = 2;
```

### Output

---
|         Teacher         |                Subject                 |
| :---------------------- | :------------------------------------- |
| Laxmi Adhikari          | English II                             |  
| Raju Dharel             | Mathematics II                         |
| Dinesh Khadka           | C Programming                          |
| Saroj Thapa             | Microprocess and Computer Architecture |
| Bishnu Prasad Khatiwada | Financial Accounting                   |

## Left Join

---
```sql
SELECT tName Teacher, sName Subject
FROM ((Teach
LEFT JOIN Teacher ON Teach.tID = Teacher.tID)
LEFT JOIN Subject ON Teach.sID = Subject.sID)
WHERE Subject.semester = 3;
```

### Output

---
|     Teacher      |           Subject            |
| :--------------- | :--------------------------- |
| Arjun Gautam     | Data Structure and Algorithm |
| Sujesh Manandhar | OOP in JAVA                  |
| Sumitra Vaidya   | Probability and Statistics   |
| Yubaraj Devkota  | Web Technology               |
| Khusu Saraf      | System Analysis and Design   |

## Right Join

---
```sql
SELECT tName Teacher, sName Subject
FROM ((Teach
RIGHT JOIN Teacher ON Teach.tID = Teacher.tID)
RIGHT JOIN Subject ON Teach.sID = Subject.sID)
WHERE Subject.semester = 4;
```

### Output


---
|         Teacher         |                Subject                 |
| :---------------------- | :------------------------------------- |
| Sumit Ghising           | Software Engineering                   |
| Sujesh Manandhar        | Database Manangement System            |
| Arjun Gautam            | Operating System                       |
| Navaraj Negi            | Numerical Method                       |
| Chhetra Bahadur Chhetri | Scripting Language                     |
