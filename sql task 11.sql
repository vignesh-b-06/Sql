delimiter //

create procedure add_employee(
    in emp_name varchar(50),
    in emp_salary decimal(10,2),
    in emp_dept varchar(50)
)
begin
    insert into employees(name, salary, department)
    values (emp_name, emp_salary, emp_dept);
end //

delimiter ;

delimiter //

create procedure get_employee_count(
    out total_count int
)
begin
    select count(*) into total_count
    from employees;
end //

delimiter ;


delimiter //

create procedure log_employee_change(
    in emp_id int,
    in action_type varchar(20)
)
begin
    insert into audit_log(employee_id, action, log_time)
    values (emp_id, action_type, now());
end //

delimiter ;

delimiter //

create trigger validate_salary
before insert on employees
for each row
begin
    if new.salary <= 0 then
        signal sqlstate '45000'
        set message_text = 'salary must be greater than zero';
    end if;
end //

delimiter ;

delimiter //

create trigger update_stock_after_insert
after insert on orders
for each row
begin
    update products
    set stock = stock - new.quantity
    where product_id = new.product_id;
end //

delimiter ;