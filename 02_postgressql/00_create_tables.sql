DROP TABLE IF EXISTS customer CASCADE;
DROP TABLE IF EXISTS product CASCADE;
DROP TABLE IF EXISTS orders CASCADE;
DROP TABLE IF EXISTS orderItems CASCADE;
DROP TABLE IF EXISTS health_need CASCADE;



CREATE TABLE customer (
     customer_id SERIAL PRIMARY KEY,
     name VARCHAR(255) NOT NULL,
         email VARCHAR(255),
         password VARCHAR(255),
         address VARCHAR(255)
     );
CREATE TABLE health_need(
    health_id SERIAL PRIMARY KEY,
    health_name VARCHAR(255)
);
CREATE TABLE product(
    product_id SERIAL PRIMARY KEY,
    health_id int,
    price VARCHAR(255) NOT NULL,
    quantity VARCHAR(255),
    product_name VARCHAR(255),
    FOREIGN KEY (health_id) REFERENCES health_need(health_id)
);   
CREATE TABLE orders(
    orders_id SERIAL PRIMARY KEY,
    customer_id int,
    date VARCHAR(255),
    foreign KEY (customer_id) REFERENCES customer(customer_id)
);
CREATE TABLE OrderItems(
    orderitems_id SERIAL PRIMARY KEY,
    product_id INT,
    orders_id INT,
    quantity INT,
    price decimal,
    foreign key (orders_id) references orders(orders_id),
    foreign key (product_id) references product(product_id)
);

