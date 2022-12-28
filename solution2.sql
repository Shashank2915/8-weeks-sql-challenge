SELECT customer_id, COUNT(DISTINCT(order_date)) AS visit_count
FROM sales
GROUP BY customer_id;