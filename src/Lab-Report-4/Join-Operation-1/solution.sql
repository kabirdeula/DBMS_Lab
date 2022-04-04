CREATE TABLE Teacher(
    tID INT PRIMARY KEY AUTO_INCREMENT,
    tName VARCHAR(50) NOT NULL,
    tAddress VARCHAR(100) NOT NULL,
    phone VARCHAR(10) NOT NULL,
    age INT(3) NOT NULL
);
 
CREATE TABLE Subject(
    sID INT PRIMARY KEY AUTO_INCREMENT,
    sName VARCHAR(100) NOT NULL,
    semester INT(5) NOT NULL
);
 
CREATE TABLE Teach(
    tID INT,
    sID INT,
    FOREIGN KEY (tID) REFERENCES Teacher(tID),
    FOREIGN KEY (sID) REFERENCES Subject(sID)
);

INSERT INTO Teacher(tName, tAddress, phone, age) VALUES
('Laxmi Adhikari', 'Kathmandu', '9814789654', 42),
('Ram Pokhrel', 'Kathmandu', '9874514524', 58),
('Raju Dharel', 'Kathmandu', '9874514524', 37),
('Dinesh Khadka', 'Kathmandu', '9874514524', 49),
('Saroj Thapa', 'Kathmandu', '9874514524', 35),
('Bishnu Prasad Khatiwada', 'Kathmandu', '9874514524', 48),
('Arjun Gautam', 'Kathmandu', '9874514524', 48),
('Sujesh Manandhar', 'Kathmandu', '9874514524', 26),
('Sumitra Vaidya', 'Kathmandu', '9874514524', 38),
('Yubaraj Devkota', 'Kathmandu', '9874514524', 48),
('Khusbu Saraf', 'Kathmandu', '9874514524', 38),
('Sumit Ghising', 'Kathmandu', '9874514524', 28),
('Navaraj Negi', 'Kathmandu', '9874514524', 35),
('Chetra Bahadur Chetri', 'Kathmandu', '9874514524', 56);

INSERT INTO Subject(sName,semester) VALUES 
('English I', 1),('Sociology', 1),('Mathematics I', 1),('CFA', 1),('Digital Logic', 1),
('English II', 2),('Financial Accounting', 2),('Mathematics II', 2),('C Programming', 2),('MPCA', 2),
('DSA', 3),('OOP in Java', 3),('Probability and Statistics', 3),('Web Technology', 3),('SAD', 3),
('Software Engineering', 4),('DBMS', 4),('Operating System', 4),('Numerical Method', 4),('Scripting Language', 4);

INSERT INTO Teach VALUES
(1, 1),(2,2),(3,3),(4,4),(5,5),
(1,6),(6,7),(3,8),(4,9),(5,10),
(7,11),(8,12),(9,13),(10,14),(11,15),
(12, 16),(8,17),(7,18),(13,19),(14,20);

SELECT tName Teacher, sName Subject
FROM Teacher T, Subject S, Teach X
WHERE T.tID = X.tID AND S.sID = X.sID AND S.semester = 1;

SELECT tName Teacher, sName Subject
FROM ((Teach
INNER JOIN Teacher ON Teach.tID = Teacher.tID)
INNER JOIN Subject ON Teach.sID = Subject.sID)
WHERE Subject.semester = 2;

SELECT tName Teacher, sName Subject
FROM ((Teach
LEFT JOIN Teacher ON Teach.tID = Teacher.tID)
LEFT JOIN Subject ON Teach.sID = Subject.sID)
WHERE Subject.semester = 3;

SELECT tName Teacher, sName Subject
FROM ((Teach
RIGHT JOIN Teacher ON Teach.tID = Teacher.tID)
RIGHT JOIN Subject ON Teach.sID = Subject.sID)
WHERE Subject.semester = 4;
