--Which item was purchased first by the customer just before they became a member?
with temp as(
select s.customer_id, s.order_date, s.product_id, m.join_date,
dense_rank() over(partition by s.customer_id order by s.order_date desc) as rank
from sales as s
join members as m
on s.customer_id=m.customer_id
where s.order_date<m.join_date
)

select t.customer_id, m.product_name,t.order_date
from temp as t
join menu as m
on t.product_id=m.product_id
where rank=1;