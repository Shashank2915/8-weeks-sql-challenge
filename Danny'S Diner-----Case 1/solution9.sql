-- 9.  If each $1 spent equates to 10 points and sushi has a 2x points multiplier - how many points would each customer have?
with temp as(select s.customer_id,m.product_name, case
when s.product_id=1 then sum(m.price)*2*10
else sum(m.price)*10
end as points
from sales as s
join menu as m
on s.product_id=m.product_id
group by s.customer_id,m.product_name, s.product_id)

select customer_id,sum(points) as POINTS
from temp
group by customer_id

--Answer:
--| customer_id | POINTS | 
--| ----------- | ---    |
--| A           | 860    |
--| B           | 940    |
--| C           | 360    |

--- Total points for Customer A is 860.
--- Total points for Customer B is 940.
--- Total points for Customer C is 360.

--