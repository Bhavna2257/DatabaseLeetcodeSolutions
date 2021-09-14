# Write your MySQL query statement below
SELECT name,bonus from Employee e LEFT JOIN Bonus b on e.empId = b.empId where bonus < 1000 OR bonus IS NULL;
