CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    order_no int,
    customer_id INT,
    delivery_dt timestamp,
    createdby varchar,
    createddt timestamp
) partition by hash(order_id);
