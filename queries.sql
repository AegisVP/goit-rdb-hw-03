-- 1.1
SELECT * FROM products;
-- 1.2
SELECT name, phone FROM shippers;

-- 2
SELECT AVG(price) as average, MAX(price) as maximun, MIN(price) as minimum FROM products;

-- 3
SELECT DISTINCT category_id, price FROM products ORDER BY price DESC LIMIT 10;
SELECT DISTINCT categories.name, products.price FROM products JOIN categories ON products.category_id = categories.id ORDER BY products.price DESC LIMIT 10;

-- 4
SELECT COUNT(*) as count FROM products WHERE price > 20 AND price < 100;

-- 5
SELECT COUNT(*) as quantity, AVG(price) as average_price FROM products GROUP BY supplier_id;
SELECT s.name, COUNT(*) as quantity, AVG(p.price) as average_price FROM products as p RIGHT JOIN suppliers as s ON p.supplier_id=s.id GROUP BY s.name;