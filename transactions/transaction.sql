
# transaction creates the values in database memory but do not save changes in database until
# we commit that change. we can rollback that in memory change to previous state.
start transaction;
insert into customers(first_name, last_name, email) values(
                              'tash',
                              'rao',
                              'tash@gmail.com'
                             );
insert into orders(amount_billed, customer_id) values (102.2,7);
commit;
rollback;
select * from customers;
select * from orders;
