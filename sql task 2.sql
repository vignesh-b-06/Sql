-- CREATE DATABASE companyDB;
use companyDB;
CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    salary DECIMAL(10,2) DEFAULT 30000
);
INSERT INTO employees (id, name, email, salary) VALUES
(1, 'Vicky',   'vicky@company.com',   45000),
(2, 'Seth',    'seth@company.com',    32000),
(3, 'Jo',      'jo@company.com',      DEFAULT), 
(4, 'Praveen', 'praveen@company.com', 50000),
(5, 'Jagan',   'jagan@company.com',   28000);
select*from employees;
INSERT INTO employees (id, name, email, salary) VALUES
(6, 'Kiran', 'vicky@company.com', 35000);
drop table employees;
