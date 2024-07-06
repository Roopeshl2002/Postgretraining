CREATE SCHEMA schedular;
-- table creation
CREATE TABLE schedular.user (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);
