DROP TABLE IF EXISTS customer;
DROP TABLE IF EXISTS product;
DROP TABLE IF EXISTS orders;

CREATE TABLE customer (
     customer_id SERIAL PRIMARY KEY,
     name VARCHAR(255) NOT NULL,
         email VARCHAR(255),
         password VARCHAR(255),
         address VARCHAR(255)
     );
CREATE TABLE product(
    product_id SERIAL PRIMARY KEY,
    price VARCHAR(255) NOT NULL,
    count VARCHAR(255),
    product_name VARCHAR(255)
);   
CREATE TABLE orders(
    orders_id SERIAL PRIMARY KEY,
    customer_id VARCHAR(255),
    date VARCHAR(255)
);