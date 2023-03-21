--2. How many days has each customer visited the restaurant?
SELECT customer_id, COUNT(DISTINCT(order_date)) AS visit_count
FROM sales
GROUP BY customer_id;

--Answer:
--| customer_id | visit_count |
--| ----------- | ----------- |
--| A           | 4          |
--| B           | 6          |
--| C           | 2          |

--- Customer A visited 4 times.
--- Customer B visited 6 times.
--- Customer C visited 2 times.

---