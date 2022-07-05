-- applying filter with aggrigate functions 
select max(billed),
    round(avg(tipped), 4)
from bookings
where tipped < 400;
-- applying filter with aggrigate functions and joinning different tables
select max(t.num_seats),
    round(avg(b.tipped), 4)
from bookings as b
    inner join tables t on b.table_id = t.id
where b.tipped < 400;