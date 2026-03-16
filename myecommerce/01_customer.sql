-- Clear existing data to prevent duplication
TRUNCATE TABLE customer RESTART IDENTITY CASCADE;

-- Mock Data for Suppliers
INSERT INTO customer (customer_id, name,email,password,address) VALUES
(1, 'ai', 'ai@gmail.com', 123,'1/1'),
(2, 'bi', 'bi@gmail.com', 234,'2/2'),
(3, 'ci', 'ci@gmail.com', 345,'3/3');