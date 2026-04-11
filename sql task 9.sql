create table sales (
    id int primary key,
    product varchar(50),
    amount decimal(10,2)
);

select id, product, amount,
       row_number() over (order by amount desc) as row_num
from sales;

select id, product, amount,
       rank() over (order by amount desc) as rank_value
from sales;

select id, product, amount,
       dense_rank() over (order by amount desc) as dense_rank_value
from sales;

select id, product, amount,
       sum(amount) over (order by id) as running_total
from sales;