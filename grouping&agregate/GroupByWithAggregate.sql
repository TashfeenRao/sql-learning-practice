-- when we want to select the some column values with aggregate function on other column
-- than we have to group by that select column so query will perform successfuly.
-- group by keyword will group the duplicate values into individual values and then calculate
-- the aggregate function values for single group item.
select t.category,
    max(t.num_seats),
    round(avg(b.tipped), 4)
from bookings as b
    inner join tables t on b.table_id = t.id
group by t.category -- where do the filter of the result on the condition by comparing individual values,
    --  than apply group by. 
    -- where can only be use before group by keyword
select booking_date,
    round(avg(tipped), 4)
from bookings
where tipped > 200
group by booking_date;
-- having keyword applied after grouping we can use agregate function for having keyword too for condition.
-- having compare grouped values with given condition and filter result accordingly.
select booking_date,
    count(booking_date)
from bookings
group by booking_date
having sum(billed) > 200;