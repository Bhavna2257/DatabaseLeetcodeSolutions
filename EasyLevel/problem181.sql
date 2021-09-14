# Write your MySQL query statement below
SELECT e1.Name as Employee from Employee e1 JOIN Employee e2 ON e1.ManagerId = e2.Id and e1.Salary > e2.Salary;
