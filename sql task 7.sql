
create table customers (
    customer_id int auto_increment primary key,
    customer_name varchar(100) not null,
    email varchar(100) unique not null,
    city varchar(50)
);

create table orders (
    order_id int auto_increment primary key,
    product_name varchar(100) not null,
    quantity int,
    price decimal(10,2),
    customer_id int,
    foreign key (customer_id) references customers(customer_id)
);


insert into customers (customer_name, email, city) values
('arun', 'arun@gmail.com', 'chennai'),
('bala', 'bala@gmail.com', 'coimbatore'),
('charan', 'charan@gmail.com', 'madurai'),
('divya', 'divya@gmail.com', 'salem'),
('eswar', 'eswar@gmail.com', 'trichy');


insert into orders (product_name, quantity, price, customer_id) values
('laptop', 1, 55000, 1),
('mouse', 2, 800, 2),
('keyboard', 1, 1500, 1),
('monitor', 1, 12000, 3),
('pendrive', 3, 600, 4);


select c.customer_name, o.product_name, o.quantity, o.price
from customers c
inner join orders o
on c.customer_id = o.customer_id;


select c.customer_name, o.product_name, o.quantity, o.price
from customers c
left join orders o
on c.customer_id = o.customer_id;