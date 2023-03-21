--4. What is the most purchased item on the menu and how many times was it purchased by all customers?
select top 1 count(s.product_id) as number_of_times,
product_name from sales as s join menu as m
on s.product_id=m.product_id
group by product_name
order by number_of_times desc;

--Answer:
--| most_purchased | product_name | 
--| ----------- | ----------- |
--| 8       | ramen |


--- Most purchased item on the menu is ramen which is 8 times. Yummy!

--
