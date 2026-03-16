-- Clear existing data to prevent duplication
TRUNCATE TABLE customer RESTART IDENTITY CASCADE;

-- Mock Data for Suppliers
INSERT INTO customer (name,email,password,address) VALUES
('ai', 'ai@gmail.com', 123,'1/1'),
('bi', 'bi@gmail.com', 234,'2/2'),
('ci', 'ci@gmail.com', 345,'3/3');