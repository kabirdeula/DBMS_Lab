# Join Operation 3

## Create 3 Tables

### suppliers

```sql
    CREATE TABLE suppliers(
    supplierID INT PRIMARY KEY AUTO_INCREMENT,
    supplierName VARCHAR(50) NOT NULL,
    supplierAddress VARCHAR(100) NOT NULL
    );
```

### parts

```sql
    CREATE TABLE parts(
    partID INT PRIMARY KEY AUTO_INCREMENT,
    partName VARCHAR(50) NOT NULL,
    color VARCHAR(25) NOT NULL
    );
```

### catlog

```sql
    CREATE TABLE catlog(
    supplierID INT,
    partID INT,
    cost DOUBLE NOT NULL,
    FOREIGN KEY (supplierID) REFERENCES suppliers(supplierID),
    FOREIGN KEY (partID) REFERENCES parts(partID)
    );
```

1. Find the name of suppliers who supply only red color parts.

    ```sql
    SELECT S.supplierName Suppliers, P.partName Parts, P.color Color
    FROM suppliers S, parts P, catlog C
    WHERE S.supplierID = C.supplierID AND P.partID = C.partID AND P.color = "red";
    ```

    ### Output

    | Suppliers    | Parts | Color | Price |
    | :----------- | :---- | :---- | :---- |
    | Sita Store   | Nails | Red   | 60    |
    | Sudina Store | Nails | Red   | 120   |

2. Find the name of parts supplied by "Hanuman Store".

    ```sql
    SELECT P.partName Parts, P.color, C.cost
    FROM catlog C, parts P, suppliers S 
    WHERE C.partID = P.partID AND C.supplierID = S.supplierID AND S.supplierName = "Hanuman Store";
    ```

    ### Output

    | Parts    | color | cost |
    | :------- | :---- | :--- |
    | Keyboard | Blue  | 1500 |

3. Increase the cost of catalog by 40%.

    ```sql
    UPDATE catlog
    SET cost = cost + (cost * 40.0 / 100.0);
    ```

4. Change the color of parts to grey whose pid is 101.

    ```sql
    UPDATE parts
    SET color = "Grey"
    WHERE partID = 101;
    ```