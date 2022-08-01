# The EXTRACT() function uses the same kinds of unit specifiers as DATE_ADD() or DATE_SUB(),
# but extracts parts from the date rather than performing date arithmetic.
# mysql> SELECT EXTRACT(YEAR FROM '1999-07-02');
# -> 1999
# mysql> SELECT EXTRACT(YEAR_MONTH FROM '1999-07-02 01:02:03');
# -> 199907
# mysql> SELECT EXTRACT(DAY_MINUTE FROM '1999-07-02 01:02:03');
# -> 20102
# mysql> SELECT EXTRACT(MICROSECOND
#                           ->                FROM '2003-01-02 10:30:00.000123');
# -> 123
select extract(day from last_checking) as minute, last_checking
from memberships;
select extract(YEAR from last_checking) as minute, last_checking
from memberships;
select extract(Month from last_checking) as month, last_checking
from memberships;
select extract(Minute from last_checking) as minute, last_checking
from memberships;


# The weekday() function Returns the weekday index for date (0 = Monday, 1 = Tuesday, � 6 = Sunday).
# mysql> SELECT WEEKDAY('1998-02-03 22:23:00');
# -> 1
# mysql> SELECT WEEKDAY('1997-11-05');
# -> 2

select weekday(last_checking) as weekday, last_checking
from memberships;

# [manual Docs] This function convert the timestamp data into selected type provided in second argument
# [automatic Docs]The CONVERT() function provides a way to convert data between different character sets. The syntax is:
# CONVERT(expr USING transcoding_name)
# In MySQL, transcoding names are the same as the corresponding character set names. Examples:
# SELECT CONVERT(_latin1'Müller' USING utf8);
# INSERT INTO utf8table (utf8column)
# SELECT CONVERT(latin1field USING utf8) FROM latin1table;
# CONVERT(... USING ...) is implemented according to the standard SQL specification.
select convert(last_checking, date) as converted_date, convert(last_checking, time) as converted_time
from memberships;

# [manual docs] TIMESTAMPDIFF(minute, start_date_for_diff, end_date_for_diff)
# [automatic docs]Returns the integer difference between the date or datetime expressions datetime_expr1 and datetime_expr2.
# The unit for the result is given by the unit argument.
# The legal values for unit are the same as those listed in the description of the TIMESTAMPADD() function.
# mysql> SELECT TIMESTAMPDIFF(MONTH,'2003-02-01','2003-05-01');
# -> 3
# mysql> SELECT TIMESTAMPDIFF(YEAR,'2002-05-01','2001-01-01');
# -> -1
select TIMESTAMPDIFF(minute, last_checking, last_checkout) as time_differnce, last_checking, last_checkout
from memberships;
select TIMESTAMPDIFF(day, last_checking, last_checkout) as time_differnce, last_checking, last_checkout
from memberships;
select TIMESTAMPDIFF(month, last_checking, last_checkout) as time_differnce, last_checking, last_checkout
from memberships;

# [manual docs] it returns difference in days and in argument the end_date should be first than start_date
# [automative docs] DATEDIFF() returns expr1 � expr2 expressed as a value in days from one date to the other.
# expr1 and expr2 are date or date-and-time expressions.
# Only the date parts of the values are used in the calculation.
# mysql> SELECT DATEDIFF('1997-12-31 23:59:59','1997-12-30');
# -> 1
# mysql> SELECT DATEDIFF('1997-11-30 23:59:59','1997-12-31');
# -> -31
select datediff(membership_end, membership_start) as datediff, membership_start, membership_end
from memberships;


# the date_add(date, interval + or - day/month/year) returns date after adding or deleting the interval of define
# number in day or month or year
select date_add(membership_start, interval 7 day) as date_add, membership_start
from memberships;
select date_add(membership_start, interval 7 month) as date_add, membership_start
from memberships;
select date_add(membership_start, interval 7 year) as date_add, membership_start
from memberships;
