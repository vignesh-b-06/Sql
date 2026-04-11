delimiter //

create procedure insert_employee(
    in emp_id int,
    in emp_name varchar(50),
    in emp_salary decimal(10,2)
)
begin
    insert into employees(id, name, salary)
    values (emp_id, emp_name, emp_salary);
end //

delimiter ;

delimiter //

create procedure update_salary(
    in emp_id int,
    in new_salary decimal(10,2)
)
begin
    update employees
    set salary = new_salary
    where id = emp_id;
end //

delimiter ;

delimiter //

create trigger update_stock_after_order
after insert on orders
for each row
begin
    update products
    set stock = stock - new.quantity
    where product_id = new.product_id;
end //

delimiter ;


call get_employees();
drop procedure if exists insert_employee;

drop trigger if exists update_stock_after_order;