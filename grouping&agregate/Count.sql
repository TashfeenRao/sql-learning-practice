-- getting total number of records
select COUNT(*) as total_bookings
from bookings;
-- getting total number entries of the column excluding the Null
select COUNT(tipped) as total_bookings
from bookings;
-- getting count of distinct records meaning  provided column values will count once no duplicate values counted
select COUNT(distinct booking_date) as total_bookings
from bookings;