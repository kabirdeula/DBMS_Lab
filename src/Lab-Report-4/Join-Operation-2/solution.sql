CREATE TABLE tblAuthor(
    authorID INT PRIMARY KEY AUTO_INCREMENT,
    firstName VARCHAR(50) NOT NULL,
    lastName VARCHAR(50) NOT NULL
);

CREATE TABLE tblEditor(
    editorID INT PRIMARY KEY AUTO_INCREMENT,
    firstName VARCHAR(50) NOT NULL,
    lastName VARCHAR(50) NOT NULL
);

CREATE TABLE tblTranslator(
    translatorID INT PRIMARY KEY AUTO_INCREMENT,
    firstName VARCHAR(50) NOT NULL,
    lastName VARCHAR(50) NOT NULL
);

CREATE TABLE tblBook(
    bookID INT PRIMARY KEY AUTO_INCREMENT,
    bookTitle VARCHAR(100) NOT NULL,
    bookType VARCHAR(50) NOT NULL,
    authorID INT,
    editorID INT,
    translatorID INT,
    FOREIGN KEY (authorID) REFERENCES tblAuthor(authorID),
    FOREIGN KEY (editorID) REFERENCES tblEditor(editorID),
    FOREIGN KEY (translatorID) REFERENCES tblTranslator(translatorID)
);

INSERT INTO tblAuthor(firstName, lastName) VALUES
('Bijina','Maharjan'),
('Kabir', 'Deula'),
('Sneha', 'Manandhar'),
('Sanisha','Maharjan'),
('Smriti','Maharjan');

INSERT INTO tblEditor(firstName, lastName) VALUES
('Deepali','Adhikari'),
('Ashma', 'Pahari'),
('Depen', 'Tuladhar'),
('Rojina','Ruwali'),
('Ayushma','Shrestha');

INSERT INTO tblTranslator(firstName, lastName) VALUES
('Srijana', 'Maharjan'),
('Samman', 'Suwal'),
('Romit', 'Manandhar'),
('Sagun', 'Ghimire'),
('Sanju', 'Mishra');

INSERT INTO tblBook(bookTitle, bookType, authorID, editorID, translatorID) VALUES
('Java Basic', 'Original', 11, 21, NULL),
('Advance Java', 'Translated', 15, 22, 32),
('C++', 'Original', 14, 24, NULL),
('Basic OOP', 'Original', 11, 24, NULL),
('Dot Net', 'Translated', 12, 25, 31),
('Android', 'Translated', 15, 22, 33),
('Python Basic', 'Translated', 13, 23, 34),
('PHP Basic', 'Original', 11, 25, NULL);

SELECT bookTitle Book , firstName Author
FROM tblBook B, tblAuthor A 
WHERE B.authorID = A.authorID;

SELECT bookTitle, firstName, lastName
FROM tblBook 
INNER JOIN tblTranslator ON tblBook.translatorID = tblTranslator.translatorID;
-- 
SELECT bookID ISBN, bookTitle Book, bookType Category, firstName Translator
FROM tblBook
LEFT JOIN tblTranslator ON tblBook.translatorID = tblTranslator.translatorID;

SELECT bookID ISBN, bookTitle Book, lastName Translator
FROM tblBook B, tblTranslator T
WHERE B.translatorID = T.translatorID
ORDER BY T.translatorID;

SELECT bookID ISBN, bookTitle Book, firstName Editor 
FROM tblBook
RIGHT JOIN tblEditor ON tblBook.editorID = tblEditor.editorID;

SELECT * FROM tblBook
LEFT JOIN tblAuthor
ON tblBook.authorID = tblAuthor.authorID
UNION
SELECT * FROM tblBook
RIGHT JOIN tblAuthor
ON tblBook.authorID = tblAuthor.authorID;
