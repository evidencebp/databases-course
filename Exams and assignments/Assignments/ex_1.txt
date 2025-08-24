# All the movies from the eighties
select year as production_year
, name  
from imdb_ijs.movies
where 
year >= 1980
and year < 1990
order by year, name;

# All movies that have ‘star’, insensitive to case, in their name
select year as production_year
, name  
from imdb_ijs.movies
where 
lower(name) like '%star%'
order by year, name;

# All movies that have ‘star’, insensitive to case, in their name - EXTRA credit
select year as production_year
, name  
from imdb_ijs.movies
where 
(lower(name) like '% star %'
or left(lower(name), 5) = 'star '
or right(lower(name), 5) = ' star'
)
order by year, name;

# All movies whose name is longer than 80 characters
select 
length(name)
, name
, year as production_year
from imdb_ijs.movies
where 
length(name) > 80
order by length(name) desc, name, year;
