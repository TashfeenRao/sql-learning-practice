-- it will sum all the records of the given column
select sum(billed),
    sum(tipped)
from bookings;
-- avg function will take average of the given column
-- it will nor count column value with null so while taking avg the total divided entry will exclude the null entry
select max(billed),
    avg(tipped)
from bookings;
-- we can use round function round of numbers after point or we can give number to round function
-- to define how long number we want after the point
select max(billed),
    round(avg(tipped))
from bookings;
select max(billed),
    round(avg(tipped), 4)
from bookings;