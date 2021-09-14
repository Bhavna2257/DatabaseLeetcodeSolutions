# Write your MySQL query statement below
SELECT customer_number from (SELECT COUNT(customer_number) as ordersplaced , customer_number from Orders group by customer_number) as temp order by ordersplaced desc LIMIT 1;


