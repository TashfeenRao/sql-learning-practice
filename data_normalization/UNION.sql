-- union is use to combines mutiple result sets rows into one
-- join use to merge or combine the different columns of multiple tables in single result set
--  when using union for two tables there must be same number of column in both tables
-- we can select same number of column from two table and than apply union
select * from users WHERE id < 3
UNION
SELECT * from users WHERE id > 3;