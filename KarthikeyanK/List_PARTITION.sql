
CREATE TABLE products (
    product_id SERIAL,
    category TEXT,
    product_name TEXT,
    price numeric,
    PRIMARY KEY (product_id, category)
) partition by list(category);


CREATE TABLE electronics PARTITION OF products
    FOR VALUES IN ('Electronics');
 
CREATE TABLE clothing PARTITION OF products
    FOR VALUES IN ('Clothing','Foot_wear');
 
CREATE TABLE furniture PARTITION OF products
    FOR VALUES IN ('Furniture');
   
drop table clothing;
   
INSERT INTO electronics (category, product_name, price)
VALUES ('Foot_wear', 'Smartphone', 500.00);
 
INSERT INTO products (category, product_name, price)
VALUES ('Foot_wear', 'T-Shirt', 25.00);
 
INSERT INTO products (category, product_name, price)
VALUES ('Furniture', 'Sofa', 800.00);


select * from products;


select * from electronics 
select * from clothing 
select * from furniture 