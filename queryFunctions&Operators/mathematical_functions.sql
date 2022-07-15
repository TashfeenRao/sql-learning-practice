# ceil => it rounds up last digit before point & it removes the points values too
# floor => the number before point remains same & it removes point values too
# round => it rounds the up according to math rule rounding &
# we can give second argument which can be number that will apply rounding rule according to that number length after point
# if we don't provide second argument than it also removes the point values after rounding otherwise
# it round according to provided second argument number
# truncate => second argument is mandatory in this function; which can be any number which
# will remove the rest of point values after that number count
# *, +, -, /

select price * billing_frequency from memberships;

select price * billing_frequency as annual_revenue from memberships;

select ceil(price * billing_frequency) as annual_revenue from memberships;

select floor(price * billing_frequency) as annual_revenue from memberships;

select round(price * billing_frequency, 1) as annual_revenue from memberships;

select truncate(price * billing_frequency, 1) as annual_revenue from memberships;
