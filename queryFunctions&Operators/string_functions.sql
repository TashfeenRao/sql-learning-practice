# concat => this function used for concatenating the strings or numbers values of different column and
# make a single string value
# lower/upper() => is used to lowercase/uppercase the strings values
# length() => this will return the length of the value in column,
# it can also be use for condition for filtering the result
# trip() => this is use to trip the provided value in argument from column value


select trim(first_name)
from memberships;
# Returns the string str with all remstr prefixes or suffixes removed.
# If none of the specifiers BOTH, LEADING, or TRAILING is given, BOTH is assumed.
# remstr is optional and, if not specified, spaces are removed.
# mysql> SELECT TRIM('  bar   ');
# -> 'bar'
# mysql> SELECT TRIM(LEADING 'x' FROM 'xxxbarxxx');
# -> 'barxxx'
# mysql> SELECT TRIM(BOTH 'x' FROM 'xxxbarxxx');
# -> 'bar'
# mysql> SELECT TRIM(TRAILING 'xyz' FROM 'barxxyz');
# -> 'barx'
# This function is multi-byte safe.


select concat(first_name, ' ', last_name) as full_name
from memberships;
# Returns the string that results from concatenating the arguments.
# May have one or more arguments. If all arguments are non-binary strings,
# the result is a non-binary string. If the arguments include any binary strings,
# the result is a binary string. A numeric argument is converted to its equivalent binary string form;
# if you want to avoid that, you can use an explicit type cast, as in this example:
# SELECT CONCAT(CAST(int_col AS CHAR), char_col); CONCAT() returns NULL if any argument is NULL.
# mysql> SELECT CONCAT('My', 'S', 'QL');
# -> 'MySQL'
# mysql> SELECT CONCAT('My', NULL, 'QL');
# -> NULL
# mysql> SELECT CONCAT(14.3);
# -> '14.3'


select lower(first_name) as full_name
from memberships;
# Returns the string str with all characters changed to lowercase according to the current character set mapping.
# The default is latin1 (cp1252 West European).
# mysql> SELECT LOWER('QUADRATICALLY');
# -> 'quadratically'
# This function is multi-byte safe.

# select first_name  from memberships where length(first_name) > 3
select length(first_name)
from memberships;
# Returns the length of the string str:str, measured in bytes.
# A multi-byte character counts as multiple bytes. This means that for a string containing five two-byte characters,'
# LENGTH() returns 10, whereas CHAR_LENGTH() returns 5.
# mysql> SELECT LENGTH('text');
# -> 4
