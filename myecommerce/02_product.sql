-- Clear existing data to prevent duplication
TRUNCATE TABLE product RESTART IDENTITY CASCADE;

-- Mock Data for Suppliers
INSERT INTO product (product_id, price,count,product_name) VALUES
(1, 199,10,'protein'),
(2, 299,20,'fish oil'),
(3, 399,30,'vitaminc');