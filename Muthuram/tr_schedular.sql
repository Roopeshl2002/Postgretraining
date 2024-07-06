CREATE SCHEMA schedular;

CREATE TABLE schedular.user (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);