-- simple example to fetch the total sum of billed and attach that column for all records
-- we can use aggregate function with window function
select booking_date,
    billed,
    SUM(billed) over() as window_func
from bookings;
-- we can provide partition by in over function to group the duplicate values into single than apply
-- the aggregate function
select booking_date,
    billed,
    SUM(billed) over(partition by booking_date) as window_func
from bookings;
-- we can provide order by command in the over function; what it will do, it starts  
-- sum for first entry for one booking date billed than next billed value for same booking date till we 
-- last entry for same booking date.
select booking_date,
    billed,
    SUM(billed) over(
        partition by booking_date
        order by billed
    ) as window_func
from bookings;
-- we can use rank() too for calculating the rank for tipped values for specific dates
select booking_date,
    tipped,
    rank() over(
        partition by booking_date
        order by tipped desc
    ) as window_func
from bookings;