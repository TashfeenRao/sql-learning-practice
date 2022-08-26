# we can apply case to some make a new column with desired text

select amount_billed,
       case
           when amount_billed > 15 and amount_billed <= 30 then 'normal day'
           when amount_billed > 30 then 'Good Day'
           else 'bad day'
           end
from orders
