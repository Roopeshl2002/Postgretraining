CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    order_date DATE,
    customer_id INT,
    total_amount NUMERIC
) partition by hash(order_id);


CREATE TABLE orders_1 PARTITION OF orders
    FOR VALUES WITH (MODULUS 3, REMAINDER 0);
 
CREATE TABLE orders_2 PARTITION OF orders
    FOR VALUES WITH (MODULUS 3, REMAINDER 1);
 
CREATE TABLE orders_3 PARTITION OF orders
    FOR VALUES WITH (MODULUS 3, REMAINDER 2);
    
   
select * from orders_2


INSERT INTO orders (order_date, customer_id, total_amount)
VALUES ('2023-01-15', 101, 500.00);
 
INSERT INTO orders (order_date, customer_id, total_amount)
VALUES ('2023-02-20', 102, 600.00);
 
INSERT INTO orders (order_date, customer_id, total_amount)
VALUES ('2023-03-10', 103, 700.00);


INSERT INTO orders (order_date, customer_id, total_amount)
VALUES ('2023-03-12', 103, 700.00);