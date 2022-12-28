select top 1 count(s.product_id) as number_of_times,
product_name from sales as s join menu as m
on s.product_id=m.product_id
group by product_name
order by number_of_times desc;