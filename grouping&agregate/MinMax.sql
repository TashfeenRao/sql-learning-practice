-- getting the max & max values from given column
select max(num_seats),
    MIN(num_seats)
from tables;
-- we can use max min for varchar data type column too,
-- in the case of max alphabatically last value be given
-- in the case of min alphabatically first value be given
select max(category),
    MIN(category)
from tables;
-- we can apply max & min on date data type column,
-- in case max largest date will be returned
-- in case min smallest date will be returned
select max(booking_date),
    MIN(booking_date)
from bookings;