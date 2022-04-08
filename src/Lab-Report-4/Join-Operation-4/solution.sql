CREATE TABLE company(
    cID INT PRIMARY KEY AUTO_INCREMENT,
    cName VARCHAR(50) NOT NULL,
    cAddress VARCHAR(80) NOT NULL,
    phone VARCHAR(10) NOT NULL,
    estdYear YEAR
);

CREATE TABLE jobs(
    jID INT PRIMARY KEY AUTO_INCREMENT,
    jTitle VARCHAR(50) NOT NULL,
    jDesc VARCHAR(255) NOT NULL,
    cID INT,
    postedDate DATE NOT NULL,
    lastDateofApplication DATE NOT NULL,
    FOREIGN KEY (cID) REFERENCES company(cID)
);

CREATE TABLE applicant(
  appID INT PRIMARY KEY AUTO_INCREMENT,
  fullName VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  phone VARCHAR(10) NOT NULL  
);

CREATE TABLE applicationSubmission(
    jID INT,
    appID INT,
    submittedDate DATE,
    FOREIGN KEY (jID) REFERENCES jobs(jID),
    FOREIGN KEY (appID) REFERENCES applicant(appID)
);

INSERT INTO company(cName, cAddress, phone, estdYear) VALUES
('Brown Pearl', 'Kathmandu', '9885148554', 2018),
('The Queens', 'Kathmandu', '9874589632', 2020),
('AG Store', 'Kathmandu', '9814523698', 2018),
('Juice Bar', 'Kathmandu', '9884152698', 2022),
('Dragon Ent', 'Kathmandu', '9841256987', 2022),
('Masala Beads', 'Kathmandu', '9884640064', 2016);

INSERT INTO jobs(jTitle, jDesc, cID, postedDate, lastDateofApplication) VALUES
('Call Center Representative', 'No experience required. Paid Weekly via Direct Deposit.', 4, '2022/04/06', '2022/05/07'),
('Customer Service', 'No experience required. Paid Weekly via Direct Deposit.', 5, '2022/04/06', '2022/05/07'),
('Data Entry', 'No experience required. Paid Weekly via Direct Deposit.', 2, '2022/04/06', '2022/05/07'),
('Talent Acquisition Associate', 'Recent graduates with Business Administration Degree are highly encouraged to apply.', 1, '2022/03/22', '2022/05/01'),
('Senior QA Automation Engineer', 'Minimum 5+ years of experience in the relevant field', 3, '2022/03/24', '2022/05/01');

INSERT INTO applicant(fullName, email, phone) VALUES
('Bijina Maharjan', 'bijinamaharjan1022@gmail.com', '9885478965'),
('Kabir Deula', 'kabirdeula167@gmail.com', '9887412563'),
('Sanisha Maharjan', 'msanisha07@gmail.com', '9841223665'),
('Sneha Manandhar', 'snehamanandhar730@gmail.com', '9823654548'),
('Smriti Maharjan', 'maharjansmri@gmail.com', '9883654789');

INSERT INTO applicationSubmission VALUES
(2, 1, '2022/04/07'), (5, 3, '2022/04/07'), (1, 3, '2022/04/07'),
(3, 2, '2022/04/07'), (4, 4, '2022/04/07'), (5, 5, '2022/04/07');

SELECT cID, cName Company
FROM company
WHERE estdYear = '2018';

SELECT fullName Name, phone
FROM applicant;

DELETE C 
FROM company C 
LEFT JOIN jobs J ON C.cID = J.cID
WHERE J.cID IS NULL;

SELECT COUNT(submittedDate) TotalApplicants
FROM applicationSubmission
WHERE submittedDate = '2022/04/07';

SELECT cName Company, COUNT(jTitle) Total_Jobs
FROM jobs INNER JOIN company 
ON jobs.cID = company.cID
GROUP BY cName;