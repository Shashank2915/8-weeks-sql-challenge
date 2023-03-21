--3. What was the first item from the menu purchased by each customer?
WITH temp_table AS
(
   SELECT customer_id, order_date, product_name,
      DENSE_RANK() OVER(PARTITION BY s.customer_id
      ORDER BY s.order_date) AS rank
   FROM sales AS s
   JOIN menu AS m
      ON s.product_id = m.product_id
)

SELECT customer_id, product_name
FROM temp_table
WHERE rank = 1
GROUP BY customer_id, product_name;

--Answer:
--| customer_id | product_name | 
--| ----------- | ----------- |
--| A           | curry        | 
--| A           | sushi        | 
--| B           | curry        | 
--| C           | ramen        |

--- Customer A's first orders are curry and sushi.
--- Customer B's first order is curry.
--- Customer C's first order is ramen.

--