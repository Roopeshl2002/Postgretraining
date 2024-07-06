CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    order_date DATE,
    customer_id INT,
    total_amount numeric,
    createdby varchar,
    createddt timestamp
) partition by hash(order_id);
