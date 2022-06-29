-- left join will include all rows from left table and from right table 
-- only the matching entries to left table will include
-- all address rows + only users which has matching id's
--  we can use multple left join for that case all the result rows from first
-- left join will be included as left and only the matching condition from right table


-- in the example i started from smallest table cities
--  than i fetch result of address table using connection city id CONNECTION
-- than becuase address has user table connection so i used that
-- connection to fetch users data 
-- cities -> address -> users
-- 

SELECT name, street, first_name from cities as c left JOIN address 
as a ON c.id = a.city_id
left join users as u on a.id = u.address_id;

