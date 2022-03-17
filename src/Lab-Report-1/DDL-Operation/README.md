## Create a Database:

---
```sql
CREATE DATABASE brownpearl;
USE brownpearl;
```
---

## Create a Table:

---
```sql
CREATE TABLE users(
    user_ID int PRIMARY KEY AUTO_INCREMENT NOT NULL,
    username VARCHAR(25) NOT NULL,
    user_password VARCHAR(16) NOT NULL,
    email VARCHAR(30) NOT NULL
);
DESCRIBE users;
```
### Output:
---
|   Field       |     Type    | Null |  Key | Default |      Extra     |
| :------------ | :---------- | :--- | :--- | :------ | :------------- |
| user_ID       | INT(11)     | NO   | PRI  | NULL    | AUTO_INCREMENT |
| username      | VARCHAR(25) | NO   |      | NULL    |                |
| user_password | VARCHAR(16) | NO   |      | NULL    |                |
| email         | VARCHAR(30) | NO   |      | NULL    |                |
---

## Altering a Table Column:

---
```sql
ALTER TABLE users
ADD user_type VARCHAR(10) NOT NULL DEFAULT 'customer';
DESCRIBE users;
```

### Output:
---
|   Field       |     Type    | Null |  Key | Default  |      Extra     |
| :------------ | :---------- | :--- | :--- | :------- | :------------- |
| user_ID       | INT(11)     | NO   | PRI  | NULL     | AUTO_INCREMENT |
| username      | VARCHAR(25) | NO   |      | NULL     |                |
| user_password | VARCHAR(16) | NO   |      | NULL     |                |
| email         | VARCHAR(30) | NO   |      | NULL     |                |
| user_type     | VARCHAR(10) | NO   |      | customer |                |
---

## Delete a Table:

```sql
DROP TABLE users;
```
---
## Delete a database

```sql
DROP DATABASE brownpearl
```
