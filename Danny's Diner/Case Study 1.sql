select customer_id, sum(price) as total_amount from sales as s
join menu as m
on s.product_id=m.product_id
group by customer_id
order by customer_id;