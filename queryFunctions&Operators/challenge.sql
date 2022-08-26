# find the week days and convert the those number into text like sunday, monday etc


select weekDay,
case
when weekDay = 7 then 'sunday'
when weekDay = 1 then 'monday'
when weekDay = 2 then 'tuesday'
when weekDay = 3 then 'wednesday'
when weekDay = 4 then 'thursday'
when weekDay = 5 then 'friday'
when weekDay = 6 then 'saturday'
    else 'not a week day'
end
from (select weekday(membership_start) + 1 as weekDay from memberships
                                 ) as weekDay


