# Perform Aggregate Operations.

---
```sql
SELECT MIN(percentage) AS MinimumPercentage, 
MAX(percentage) AS MaximumPercentage,
AVG(percentage) AS AveragePercentage,
SUM(percentage) AS TotalPercentage
FROM student;
```

### Output

---
| MinimumPercentage | MaximumPercentage | AveragePercentage | TotalPercentage |
| ----------------: | ----------------: | ----------------: | --------------: | 
|                 4 |                97 |           59.8000 |            1794 | 
---

