SELECT customer_id , name from Customers 
where customer_id IN 
(SELECT customer_id from Product p 
INNER JOIN Orders o on p.product_id = o.product_id 
WHERE order_date between '2020-06-01' AND '2020-06-30' 
group by customer_id  having SUM(p.price * o.quantity) >= 100) 
AND customer_id IN 
(SELECT customer_id from Product p 
INNER JOIN Orders o on p.product_id = o.product_id 
WHERE order_date between '2020-07-01' AND '2020-07-31' 
group by customer_id having SUM(p.price * o.quantity) >= 100)
