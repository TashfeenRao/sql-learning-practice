-- inner join only include result that is part of both table 
-- for SPECIFIC CONDITION ex u.id = a.id all the (matching id in both tables)
-- we can select column names that will be part
-- of the result query

-- i can use alias for tables & column name for shorter sytanx


-- we can join as many as tables we want 

-- SELECT u.id, first_name, last_name
-- email, house_no, street, c.name as city_name from users as u
-- INNER JOIN address as a ON u.address_id = a.id
-- INNER JOIN cities as c ON a.city_id = c.id;

SELECT u.id, u.first_name,
 u.last_name, email, house_no, street as street_no, 
 city_id from users as u INNER JOIN address as a ON 
u.address_id = a.id;