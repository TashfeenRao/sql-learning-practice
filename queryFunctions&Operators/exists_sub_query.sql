# we can use exist as boolean condition which only checks the exist condition for given args
select exists(select email from customers where email = 'max@test.com');

# we can use exist as sub query of condition
select * from orders as o
where exists(select c.email from customers as c where c.id = o.customer_id);

# we can use IN when there are multiple values for comparing it's like OR operator in programming
select * from customers where
id in (1,2);

select * from customers where
        id not in (1,2);
