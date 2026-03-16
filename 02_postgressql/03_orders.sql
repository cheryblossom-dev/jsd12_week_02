-- Clear existing data to prevent duplication
TRUNCATE TABLE orders RESTART IDENTITY CASCADE;

-- Mock Data for Suppliers
INSERT INTO orders (customer_id,date) VALUES
(1,01022026),
(2,02022026),
(3,03022026);