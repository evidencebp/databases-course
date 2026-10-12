# 100 characters are not enough sometimes
select *
from imdb_ijs.movies
where
length(name) = 100
order by name
;

# The strange most common role
select r.role
, max(length(r.role)) as len
, max(r.role is null) as is_null
, count(*)
from imdb_ijs.roles as r
group by
r.role
order by count(*) desc;

# The return of Superman
select r.role
, max(length(r.role)) as len
, max(r.role is null) as is_null
, count(*)
from imdb_ijs.roles as r
where lower(r.role) like '%superman%'
group by
r.role
order by count(*) desc;

# Movies of the same name
select name
, count(*) as cnt
from imdb_ijs.movies
group by
name 
having cnt > 1
order by cnt desc, name;

# Movies of the same name and year
select name
, year
, count(*) as cnt
from imdb_ijs.movies
group by
name 
, year
having cnt > 1
order by cnt desc, name, year;

# Generating query to count the rows in all tables
Select 
concat('Select count(*) from imdb_ijs.', TABLE_NAME, ' ;') as num_query
from 
INFORMATION_SCHEMA.Tables
where
table_schema = 'imdb_ijs'
order by table_name
;

# In class exercises

# Generate queries to check each column for being unique
Select 
concat('Select count(*)as cnt, count(distinct '
, Column_Name
, ') as dis_values from imdb_ijs.', TABLE_NAME, ' having cnt != dis_values;') as num_query
from 
INFORMATION_SCHEMA.Columns
where
table_schema = 'imdb_ijs'
order by table_name
;

# Check if all directors in movies_directors are directors. If so, how come?
select md.*
from
imdb_ijs.movies_directors as md
left join
imdb_ijs.directors as d
on
md.director_id = d.id 
where
d.id is null
;

# Find the directors that did not directed. How can you prevent such cases?
select d.*
from
imdb_ijs.directors as d
left join
imdb_ijs.movies_directors as md
on
d.id = md.director_id
where
md.director_id is null
;


