-- get the maximun sum for single calender date
select booking_date,
    max(daily_sum)
from (
        select booking_date,
            sum(billed) as daily_sum
        from bookings
        group by booking_date
    ) as daily_booking;
-- get calendar date for minimum bill for that date
select booking_date,
    sum(billed) as daily_summ
from bookings
group by booking_date
having daily_summ = (
        select min(billed) as daily_sum
        from bookings
    );