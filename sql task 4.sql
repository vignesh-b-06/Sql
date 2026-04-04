
CREATE TABLE orders (
    id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(100),
    quantity INT,
    price DECIMAL(10,2)
);
INSERT INTO orders (product_name, quantity, price) VALUES
('protein shake', 3, 120.00),
('whey protien', 2, 8000.00),
('creatine', 3, 1200.00),
('tren', 1, 15000.00),
('Almonds', 4, 450.00);


SELECT * FROM orders
WHERE quantity > 2;

SELECT * FROM orders
WHERE price BETWEEN 100 AND 500;

SELECT * FROM orders
WHERE product_name LIKE 'A%';

SELECT * FROM orders
ORDER BY quantity DESC;