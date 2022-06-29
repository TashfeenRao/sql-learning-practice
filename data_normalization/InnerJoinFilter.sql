-- we can apply any condition to selected result from 
-- multiple tables, filter will apply after merging the result

SELECT u.id, first_name, last_name
email, house_no, street, c.name as city_name from users as u
INNER JOIN address as a ON u.address_id = a.id
INNER JOIN cities as c ON a.city_id = c.id
WHERE c.name = 'Lahore' OR u.first_name = 'manan'
ORDER by c.id DESC
;

