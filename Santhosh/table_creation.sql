CREATE TABLE Shop (
    shop_id SERIAL PRIMARY KEY,
    shop_name VARCHAR(100) NOT NULL,
    location VARCHAR(100),
    opening_date DATE,
    is_open BOOLEAN DEFAULT true
);


INSERT INTO Shop (shop_name, location, opening_date, is_open) 
VALUES 
('Shop A', 'Location A', '2023-01-01', true),
('Shop B', 'Location B', '2023-02-01', true),
('Shop C', 'Location C', '2023-03-01', false);


-- 