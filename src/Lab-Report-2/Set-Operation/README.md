# Perform Set Operations.

## UNION
---
```sql
SELECT stu_address FROM stu_bca
UNION
SELECT stu_address FROM stu_bbm
ORDER BY stu_address;
```

### Output

---
| stu_address |
| :---------- |
| Bhojpur     | 
| Dhankuta    |
| Dharan      |
| Ilam        |
| Kathmandu   |
| Khandbari   |
| Lalitpur    |
| Taplejung   |
---

## UNION ALL
---
```sql
SELECT stu_address FROM stu_bca
UNION ALL
SELECT stu_address FROM stu_bbm
ORDER BY stu_address;
```

### Output

---
| stu_address |
| :---------- |
| Bhojpur     |
| Bhojpur     | 
| Dhankuta    |
| Dharan      |
| Ilam        |
| Ilam        |
| Kathmandu   |
| Kathmandu   |
| Kathmandu   |
| Kathmandu   |
| Kathmandu   |
| Kathmandu   |
| Kathmandu   |
| Kathmandu   |
| Kathmandu   |
| Kathmandu   |
| Khandbari   |
| Lalitpur    |
| Taplejung   |
---

## INTERSECTION
---
```sql
SELECT stu_address FROM stu_bca
INTERSECT
SELECT stu_address FROM stu_bbm
ORDER BY stu_address;
```

### Output

---
| stu_address |
| :---------- |
| Bhojpur     | 
| Ilam        |
| Kathmandu   |
---

## SET DIFFERENCE
---
```sql
SELECT stu_address FROM stu_bbm
EXCEPT
SELECT stu_address FROM stu_bca
ORDER BY stu_address;
```

### Output

---
| stu_address |
| :---------- | 
| Dhankuta    |
| Dharan      |
| Khandbari   |
| Lalitpur    |
| Taplejung   |
---
