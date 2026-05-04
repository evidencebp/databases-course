use imdb_ijs;

# Just bring the movies
select * # Data per item
from movies; # Source of items

# Bring Superman movies
select * 
from movies
where name like '%Superman%' # Filter the items of items
order by year;

# From the first to the last
select * 
from movies
where name like '%Superman%'
order by year, name; # Sorting of items


# Structure columns as we wish
select year as production_year # Order of columns and their name is important!
, name  
from movies
where name like '%Superman%'
order by year, name;

# Add genre from another table 
select year as production_year 
, name  
, genre
from movies as m
join
movies_genres as mg
on
m.id = mg.movie_id
where name like '%Superman%'
order by year, name, genre;


# Class exercises
 
# Actors named Marilyn 
Select * 
from actors 
where first_name = 'Marilyn' 
order by last_name; 

# Directors named Hitchcock
Select * 
from directors 
where last_name = 'Hitchcock' 
order by first_name; 

# Actors whose first and last name start in the same letter
Select left(first_name, 1) as first_letter
, first_name
, last_name
from actors 
where left(first_name, 1) = left(last_name,1) 
order by first_name, last_name; 

# A row per director and the related genres
select
first_name
, last_name
, prob
, genre
from 
directors as d
join
directors_genres as dg
on
d.id = dg.director_id
order by first_name, last_name, prob, genre
;


# Sherlock Holmes with production period
select 
year as production_year
, name
, case 
	when year < 1920 then 'Ancient' 
	when year < 1939 then 'Pre WWII' 
	when year > 1990 then 'New (for this dataset)' 
    else 'In between'
end as age
from movies
where 
name like '%Sherlock Holmes%'
order by year desc, name;

