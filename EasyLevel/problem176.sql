Query 1:
--------
SELECT IFNULL((SELECT DISTINCT Salary from Employee ORDER BY Salary DESC LIMIT 1 OFFSET 1),NULL) AS SecondHighestSalary

Query 2:
--------
SELECT MAX(Salary) as SecondHighestSalary from Employee where Salary NOT IN (SELECT MAX(Salary) from Employee)
