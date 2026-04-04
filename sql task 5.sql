
select count(*) as total_orders
from orders;

select sum(price) as total_price
from orders;


select avg (price) as average_price
from orders;


select product_name, sum(price) as total_sales
from orders
group by  product_name;

select  max(price) as highest_price, min(price) as lowest_price
from orders;


select product_name, sum(price) as total_sales
from orders
group by  product_name
order by  total_sales desc;