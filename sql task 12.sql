delimiter //

create trigger prevent_salary_decrease
before update on employees
for each row
begin
    if new.salary < old.salary then
        signal sqlstate '45000'
        set message_text = 'salary cannot be reduced';
    end if;
end //

delimiter ;

delimiter //

create trigger archive_deleted_employee
after delete on employees
for each row
begin
    insert into employee_archive(id, name, salary, deleted_at)
    values (old.id, old.name, old.salary, now());
end //

delimiter ;

delimiter //

create trigger update_last_modified
before update on employees
for each row
begin
    set new.last_modified = now();
end //

delimiter ;

delimiter //

create trigger prevent_null_insert
before insert on employees
for each row
begin
    if new.name is null or new.salary is null then
        signal sqlstate '45000'
        set message_text = 'critical fields cannot be null';
    end if;
end //

delimiter ;

delimiter //

create trigger check_stock_before_order
before insert on orders
for each row
begin
    declare available_stock int;

    select stock into available_stock
    from products
    where product_id = new.product_id;

    if new.quantity > available_stock then
        signal sqlstate '45000'
        set message_text = 'insufficient stock';
    end if;
end //

delimiter ;