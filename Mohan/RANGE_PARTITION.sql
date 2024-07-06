CREATE TABLE sales (
    sale_id SERIAL ,
    sale_date DATE,
    product_id INT,
    quantity INT,
    amount numeric,
    PRIMARY KEY (sale_id, sale_date)
) partition by range (sale_date);


select * from sales_february sf ;
select * from sales_march sm ;
select * from sales_january sj  ;

select * from sales

CREATE TABLE sales_january PARTITION OF sales
    FOR VALUES FROM ('2023-01-01') TO ('2023-02-01');
 
CREATE TABLE sales_february PARTITION OF sales
    FOR VALUES FROM ('2023-02-01') TO ('2023-03-01');
 
CREATE TABLE sales_march PARTITION OF sales
    FOR VALUES FROM ('2023-03-01') TO ('2023-04-01');
   
   
INSERT INTO sales (sale_date, product_id, quantity, amount)
VALUES ('2023-04-15', 101, 5, 100.00);

INSERT INTO sales (sale_date, product_id, quantity, amount)
VALUES ('2023-02-20', 102, 10, 200.00);
 
INSERT INTO sales (sale_date, product_id, quantity, amount)
VALUES ('2023-03-10', 103, 8, 150.00);




ALTER TABLE sales_january ADD CONSTRAINT sales_january_check
    CHECK (sale_date >= '2023-01-01' AND sale_date < '2023-02-01');
 
ALTER TABLE sales_february ADD CONSTRAINT sales_february_check
    CHECK (sale_date >= '2023-02-01' AND sale_date < '2023-03-01');
 
ALTER TABLE sales_march ADD CONSTRAINT sales_march_check
    CHECK (sale_date >= '2023-03-01' AND sale_date < '2023-04-01');
 
