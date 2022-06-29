-- ALTER TABLE users 
-- modify CONSTRAINT address_users_relation
-- FOREIGN KEY (address_id) REFERENCES address(id);

-- we can create REFERENCES to related table with FOREIGN KEY
-- in this way ambigious data can not be create in related TABLES
-- we can perform some actions on delete or update of related tables using 
--  the REFERENCE.
-- RESTRICT or No ACTION (it will RESTRICT deleting the row of related data)
-- CASCADE (it will delete the related row from both tables)



-- CREATE TABLE address (
--    id INT PRIMARY KEY AUTO_INCREMENT,
--     -- id SERIAL PRIMARY KEY,
--     house_no varchar(100) NOT NULL,
--     street varchar(300) NOT NULL,
--     city_id int NOT NULL
-- );


CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    -- id SERIAL PRIMARY KEY,
    first_name VARCHAR(300) NOT NULL,
    last_name VARCHAR(300) NOT NULL,
    email VARCHAR(300) NOT null,
    -- address_id int REFERENCES address (id) ON DELETE RESTRICT -- posgre sql
    address_id int not null,
     FOREIGN KEY (address_id) REFERENCES address (id) --  mysql
);




CREATE TABLE cities (
   id INT PRIMARY KEY AUTO_INCREMENT,
   -- id SERIAL PRIMARY KEY,
    name varchar(300) NOT NULL
);