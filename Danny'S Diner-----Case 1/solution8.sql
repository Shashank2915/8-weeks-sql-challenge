--8. What is the total items and amount spent for each member before they became a member ?
select s.customer_id,
COUNT(distinct m.product_id) as COUNT, sum(m.price) as PRICE
from sales as s 
join menu as m
on s.product_id=m.product_id
join members as mem
on s.customer_id=mem.customer_id
where s.order_date<mem.join_date
group by s.customer_id
order by s.customer_id;

--Answer:
--| customer_id | COUNT | PRICE |
--| ----------- | ------|-------|
--| A           | 2	    |  25   |
--| B           | 2     |  40   |

--Before becoming members,
--- Customer A spent $ 25 on 2 items.
--- Customer B spent $40 on 2 items.

--
