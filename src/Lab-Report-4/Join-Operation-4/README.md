# Join Operation 4

## Create 4 Tables

### company

```sql
    CREATE TABLE company(
        cID INT PRIMARY KEY AUTO_INCREMENT,
        cName VARCHAR(50) NOT NULL,
        cAddress VARCHAR(80) NOT NULL,
        phone VARCHAR(10) NOT NULL,
        estdYear YEAR
    );
```

### jobs

```sql
    CREATE TABLE jobs(
        jID INT PRIMARY KEY AUTO_INCREMENT,
        jTitle VARCHAR(50) NOT NULL,
        jDesc VARCHAR(255) NOT NULL,
        cID INT,
        postedDate DATE NOT NULL,
        lastDateofApplication DATE NOT NULL,
        FOREIGN KEY (cID) REFERENCES company(cID)
    );
```

### applicant

```sql
    CREATE TABLE applicant(
      appID INT PRIMARY KEY AUTO_INCREMENT,
      fullName VARCHAR(100) NOT NULL,
      email VARCHAR(100) NOT NULL,
      phone VARCHAR(10) NOT NULL  
    );
```

### applicationSubmission

```sql
    CREATE TABLE applicationSubmission(
        jID INT,
        appID INT,
        submittedDate DATE,
        FOREIGN KEY (jID) REFERENCES jobs(jID),
        FOREIGN KEY (appID) REFERENCES applicant(appID)
    );
```

1. Find the list of all the companies that were established in the year 2018.

    ```sql
    SELECT cID, cName Company
    FROM company
    WHERE estdYear = '2018';
    ```

    ### Output

    | cID  | Company     |
    | :--- | :---------- |
    | 1    | Brown Pearl |
    | 3    | AG Store    |

2. Find the name and phone number of all applicants.

    ```sql
    SELECT fullName Name, phone
    FROM applicant;
    ```

    ### Output

    | Name            | phone      |
    | :-------------- | :--------- |
    | Bijina Maharjan |	9885478965 |
    | Kabir Deula	  | 9887412563 |
    | Sanisha Maharjan| 9841223665 |
    | Sneha Manandhar | 9823654548 |
    | Smriti Maharjan | 9883654789 |

3. Delete all the companies which have never posted any jobs.

    ```sql
    DELETE C 
    FROM company C 
    LEFT JOIN jobs J ON C.cID = J.cID
    WHERE J.cID IS NULL;
    ```

4. Find how many applicants were submitted on 2022/04/07.

    ```sql
    SELECT COUNT(submittedDate) TotalApplicants
    FROM applicationSubmission
    WHERE submittedDate = '2022/04/07';
    ```

    ### Output

    | TotalApplicants |
    | :-------------- |
    | 6               |

5. Find how many jobs are submited by each company.

    ```sql
    SELECT cName Company, COUNT(jTitle) Total_Jobs
    FROM jobs INNER JOIN company 
    ON jobs.cID = company.cID
    GROUP BY cName;
    ```

    ### Output

    | Company     | Total_Jobs |
    | :---------- | :--------- |
    | AG Store    | 1          |
    | Brown Pearl | 1          |
    | Dragon Ent  | 1          |
    | Juice Bar   | 1          |
    | The Queens  | 1          |      