
CREATE TABLE products (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    price DECIMAL(10,2)
);

ALTER TABLE products
ADD stock INT;
ALTER TABLE products
RENAME COLUMN price TO unit_price;
INSERT INTO products (id, name, unit_price, stock) VALUES
(1, 'Laptop', 55000, 10),
(2, 'Mouse', 500, 50),
(3, 'Keyboard', 1200, 30),
(4, 'Monitor', 8000, 15),
(5, 'Speaker', 2500, 20);
SELECT * FROM products;
UPDATE products
SET stock = 25
WHERE id = 5;
SELECT * FROM products;

DELETE FROM products
WHERE id = 2;

SELECT * FROM products;