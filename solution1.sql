SELECT s.customer_id, SUM(price) AS total_sales
FROM sales AS s
JOIN menu AS m
   ON s.product_id = m.product_id
GROUP BY customer_id; 