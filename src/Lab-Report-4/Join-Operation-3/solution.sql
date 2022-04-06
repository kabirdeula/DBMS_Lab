CREATE TABLE suppliers(
    supplierID INT PRIMARY KEY AUTO_INCREMENT,
    supplierName VARCHAR(50) NOT NULL,
    supplierAddress VARCHAR(100) NOT NULL
);

CREATE TABLE parts(
    partID INT PRIMARY KEY AUTO_INCREMENT,
    partName VARCHAR(50) NOT NULL,
    color VARCHAR(25) NOT NULL
);

CREATE TABLE catlog(
    supplierID INT,
    partID INT,
    cost DOUBLE NOT NULL,
    FOREIGN KEY (supplierID) REFERENCES suppliers(supplierID),
    FOREIGN KEY (partID) REFERENCES parts(partID)
);

INSERT INTO suppliers(supplierName, supplierAddress) VALUES
('Jamuna Store', 'Kathmandu'),
('Ganga Store', 'Bhaktapur'),
('Sita Store', 'Lalitpur'),
('Ram Store', 'Solukhumbu'),
('Sujesh Store', 'Kathmandu'),
('Hanuman Store', 'Bhaktapur'),
('Ramesh Store','Solukhumbu'),
('Sudina Store', 'Banepa'),
('Hari Store', 'Lalitpur'),
('Sanisha Store', 'Bhaktapur');

INSERT INTO parts(partName, color) VALUES
('Nails', 'Red'),
('RAM', 'Orange'),
('Touch Screen', 'Yellow'),
('Pipes', 'Green'),
('Keyboard', 'Blue'),
('Mouse', 'Purple');
-- 
INSERT INTO catlog VALUES
(1, 105, 750), (2, 106, 250), (3, 101, 60), (4, 104, 1200), 
(5, 103, 5000), (6, 105, 1500), (7, 106, 750), (8, 101, 120), 
(9, 104, 2000), (10, 102, 7000);
-- 
SELECT S.supplierName Suppliers, P.partName Parts, P.color Color, C.cost Price
FROM suppliers S, parts P, catlog C
WHERE S.supplierID = C.supplierID AND P.partID = C.partID AND P.color = "red";
-- 
SELECT P.partName Parts, P.color, C.cost
FROM catlog C, parts P, suppliers S 
WHERE C.partID = P.partID AND C.supplierID = S.supplierID AND S.supplierName = "Hanuman Store";
-- 
UPDATE catlog
SET cost = cost + (cost * 40.0 / 100.0);
-- 
UPDATE parts
SET color = "Grey"
WHERE partID = 101;
-- 
-- 