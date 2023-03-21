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
