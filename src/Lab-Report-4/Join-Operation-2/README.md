# Join Operation 2

## Create Four Tables

### tblAuthors

```sql
CREATE TABLE tblAuthor(
    authorID INT PRIMARY KEY AUTO_INCREMENT,
    firstName VARCHAR(50) NOT NULL,
    lastName VARCHAR(50) NOT NULL
);
```

### tblEditor

```sql
CREATE TABLE tblEditor(
    editorID INT PRIMARY KEY AUTO_INCREMENT,
    firstName VARCHAR(50) NOT NULL,
    lastName VARCHAR(50) NOT NULL
);
```

### tblTranslator

```sql
CREATE TABLE tblTranslator(
    translatorID INT PRIMARY KEY AUTO_INCREMENT,
    firstName VARCHAR(50) NOT NULL,
    lastName VARCHAR(50) NOT NULL
);
```

### tblBook

```sql
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
```

1. Display the names of the book and the first name of corresponding author using join on books and author table.

    ```sql
    SELECT bookTitle Book, firstName Author
    FROM tblBook B, tblAuthor A 
    WHERE B.authorID = A.authorID;
    ```

    ### Output

    |     Book     |  Author |
    | :----------- | :------ |
    | Java Basic   | Bijina  |
    | Advance Java | Smriti  |
    | C++          | Sanisha |
    | Basic OOP    | Bijina  |
    | Dot Net      | Kabir   |
    | Android      | Smriti  |
    | Python Basic | Sneha   |
    | PHP Basic    | Bijina  |

2. List the records of book and their translator's first name and last name by using inner join.

    ```sql
    SELECT bookTitle, firstName, lastName
    FROM tblBook 
    INNER JOIN tblTranslator ON tblBook.translatorID = tblTranslator.translatorID;
    ```

    ### Output

    |   bookTitle  | firstName | lastName  |
    | :----------- | :-------- | :-------- |
    | Advance Java | Samman    | Suwal     |
    | Dot Net      | Srijana   | Maharjan  |
    | Android      | Romit     | Manandhar |
    | Python Basic | Sagun     | Ghimire   |

3. List the record of book with the names of translators using left outer joiin on books and translators table.

    ```sql
    SELECT bookID ISBN, bookTitle Book, bookType Category, firstName Translator
    FROM tblBook
    LEFT JOIN tblTranslator ON tblBook.translatorID = tblTranslator.translatorID;
    ```

    ### Output

    | ISBN | Book         | Category   | Translator |
    | :--- | :----------- | :--------- | :--------- |
    | 1    | Java Basic   | Original   | null       |
    | 2    | Advance Java | Translated | Samman     |
    | 3    | C++          | Original   | null       |
    | 4    | Basic OOP    | Original   | null       |
    | 5    | Dot Net      | Translated | Srijana    |
    | 6    | Android      | Translated | Romit      |
    | 7    | Python Basic | Translated | Sagun      |
    | 8    | PHP Basic    | Original   | null       |

4. Show the basic book information (i.e. ID amd title) along with the last names of the corresponding editors in ascending order by id.

    ```sql
    SELECT bookID ISBN, bookTitle Book, lastName Translator
    FROM tblBook B, tblTranslator T
    WHERE B.translatorID = T.translatorID
    ORDER BY T.translatorID;
    ```

    ### Output

    | ISBN | Book         | Translator |
    | :--- | :----------- | :--------- |
    | 5    | Dot Net      | Maharjan   |
    | 2    | Advance Java | Suwal      |
    | 6    | Android      | Manandhar  |
    | 7    | Python Basic | Ghimire    |

5. List all the first names of editors along with the basic book information translated by them using right outer join on books and editors table.

    ```sql
    SELECT bookID ISBN, bookTitle Book, firstName Editor 
    FROM tblBook
    RIGHT JOIN tblEditor ON tblBook.editorID = tblEditor.editorID;
    ```

    ### Output

    | ISBN | Book         | Editor  |
    | :--- | :----------- | :------ |
    | 1    | Java Basic   | Deepali | 
    | 2    | Advance Java | Ashma   | 
    | 6    | Android      | Ashma   | 
    | 7    | Python Basic | Depen   | 
    | 3    | C++          | Rojina  | 
    | 4    | Basic OOP    | Rojina  | 
    | 5    | Dot Net      | Ayushma | 
    | 8    | PHP Basic    | Ayushma | 

6. Join and display all the records of books and authors table keeping all the records from both table. (use full outer join)

    ```sql
    SELECT * FROM tblBook
    LEFT JOIN tblAuthor
    ON tblBook.authorID = tblAuthor.authorID
    UNION
    SELECT * FROM tblBook
    RIGHT JOIN tblAuthor
    ON tblBook.authorID = tblAuthor.authorID;
    ```

    ### Output

    | bookID | bookTitle    | bookType   | authorID | editorID | translatorID | firstName | lastName  |
    | :----- | :----------- | :--------- | :------- | :------- | :----------- | :-------- | :-------- |
    | 1      | Java Basic   | Original   | 11       | 21       | null         | Bijina    | Maharjan  |
    | 2      | Advance Java | Translated | 15       | 22       | 32           | Smriti    | Maharjan  |
    | 3      | C++          | Original   | 14       | 24       | null         | Sanisha   | Maharjan  |
    | 4      | Basic OOP    | Original   | 11       | 24       | null         | Bijina    | Maharjan  |
    | 5      | Dot Net      | Translated | 12       | 25       | 31           | Kabir     | Deula     |
    | 6      | Android      | Translated | 15       | 22       | 33           | Smriti    | Maharjan  |
    | 7      | Python Basic | Translated | 13       | 23       | 34           | Sneha     | Manandhar |
    | 8      | PHP Basic    | Original   | 11       | 25       | null         | Bijina    | Maharjan  |