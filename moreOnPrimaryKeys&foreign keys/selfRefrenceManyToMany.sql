
-- many to many relationship for same table using association table for making relations
-- for example
--  1 user can have many friends ( 1 user_id can have relations with many friend_id)
-- 1 friend can have many users ( 1 friend_id can have relations with many user_id)
--  to make sure not same type of relation record enter in the friends table
-- we use check for user_id should always act as smaller for relations


CREATE TABLE users (
    id int primary key auto_increment,
    name varchar(200),
);

CREATE table friends (
    user_id int REFERENCES users (id),
    friend_id int REFERENCES users (id),
    check (user_id < friend_id) 
);

insert into users (name) values
('tash'),
 ('umair'),
  ('ahsan'),
   ('atif');

   insert into friends (user_id, friend_id) values
(1,4),
 (1,2),
  (2,3),
   (1,3);