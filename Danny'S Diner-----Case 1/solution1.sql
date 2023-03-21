--1. What is the total amount each customer spent at the restaurant?
SELECT s.customer_id, SUM(price) AS total_sales
FROM sales AS s
JOIN menu AS m
   ON s.product_id = m.product_id
GROUP BY customer_id; 

--Answer:
--| customer_id | total_sales |
--| ----------- | ----------- |
--| A           | 76          |
--| B           | 74          |
--| C           | 36          |

--- Customer A spent $76.
--- Customer B spent $74.
--- Customer C spent $36.

--
