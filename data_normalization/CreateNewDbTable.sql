-- CREATE DATABASE relations;

CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT,
   -- id SERIAL PRIMARY KEY,
    first_name VARCHAR(300) NOT NULL,
    last_name VARCHAR(300) NOT NULL,
    email VARCHAR(300) NOT null,
    address_id int NOT NULL
);

CREATE TABLE address (
   id INT PRIMARY KEY AUTO_INCREMENT,
    -- id SERIAL PRIMARY KEY,
    house_no varchar(100) NOT NULL,
    street varchar(300) NOT NULL,
    city_id int NOT NULL
);

CREATE TABLE cities (
   id INT PRIMARY KEY AUTO_INCREMENT,
   -- id SERIAL PRIMARY KEY,
    name varchar(300) NOT NULL
);