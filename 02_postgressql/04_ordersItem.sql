-- Clear existing data to prevent duplication
TRUNCATE TABLE OrderItems RESTART IDENTITY CASCADE;

-- Mock Data for orderItems
INSERT INTO OrderItems (product_id,orders_id,price,quantity) VALUES
(1,1,199,100),
(2,2,299,200),
(3,3,399,300);