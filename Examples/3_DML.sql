
#############
# All movies directed by Hitchcock
# The long way...
#############

# Alfred Hitchcock's Id (34658)
Select id 
from imdb_ijs.directors 
where 
last_name = 'Hitchcock' 
and first_name = 'Alfred (I)'
;

# Movies Ids of Hitchcock's Id (34658)
Select group_concat(movie_id) 
from imdb_ijs.movies_directors 
where 
director_id = 34658
; 

# Movies by Hitchcock
Select *
from imdb_ijs.movies
where id in
(2371,12782,25091,38614,40111,43421,58803,85669,92282,96991,98761,99522,108343,109241,117557,119872,150797,154110,165221,183833,190327,193373,203534,203535,204854,206255,206824,220310,220779,222774,235062,235676,236663,236699,248413,258033,266574,273543,273585,277627,278493,281546,284904,284916,292297,296767,303992,309651,310843,312782,316323,320308,334136,335896,336141,340552,345970,352639,358879,359928,368952,372437,406455,407103)
order by year, name
;

#############
# All movies directed by Hitchcock
# The short way...
#############
Select m.*
from 
imdb_ijs.directors as d
join
imdb_ijs.movies_directors as md
on
d.id = md.director_id
join
imdb_ijs.movies as m
on
md.movie_id = m.id
where 
last_name = 'Hitchcock' 
and first_name = 'Alfred (I)'
order by year, name
;

# Colors, and select from a fixed list
Select *
from
(SELECT 'Blue' AS Color
UNION SELECT 'Red'
UNION SELECT 'Green'
UNION SELECT 'White' 
UNION SELECT 'Black') as c # Note - selected records are not guaranteed to come in the "storing" order
;


# Practical deviation from sets
Select *
from
(SELECT 'Blue' AS Color
UNION SELECT 'Red'
UNION SELECT 'Green'
UNION SELECT 'White' 
UNION SELECT 'Black'
UNION ALL SELECT 'Black'
UNION ALL SELECT 'Black'
UNION ALL SELECT 'Black'
) as c 
;


# Distinct brings unique records, as in set
# Beware - in cases it is handy there is probably an earlier severe mistake
# in the database design or query
Select distinct *
from
(SELECT 'Blue' AS Color
UNION SELECT 'Red'
UNION SELECT 'Green'
UNION SELECT 'White' 
UNION SELECT 'Black'
UNION ALL SELECT 'Black'
UNION ALL SELECT 'Black'
UNION ALL SELECT 'Black'
) as c 
;


# Size
Select *
from
(SELECT 'Small' AS Size
UNION SELECT 'Medium'
UNION SELECT 'Large') as s
;

# Cartesian product
Select *
from
(SELECT 'Blue' AS Color
UNION SELECT 'Red'
UNION SELECT 'Green'
UNION SELECT 'White' 
UNION SELECT 'Black') as c, 
(SELECT 'Small' AS Size
UNION SELECT 'Medium'
UNION SELECT 'Large') as s
;

# Directors and their movies (if exists)
Select *
from 
imdb_ijs.directors as d
left join
imdb_ijs.movies_directors as md
on
d.id = md.director_id
;


# Directors that did not direct any movie
Select d.*
from 
imdb_ijs.directors as d
left join
imdb_ijs.movies_directors as md
on
d.id = md.director_id
where 
md.director_id is null;

# Movies without a director
Select d.*
from 
imdb_ijs.directors as d
right join # Don't do it. Strat in the first table and follow the same direction!
imdb_ijs.movies_directors as md
on
d.id = md.director_id
where 
d.id is null;


# Creating a new table based on another
DROP TABLE IF EXISTS imdb_ijs.tmp_movies; # Drop is important for reruns
CREATE TABLE imdb_ijs.tmp_movies
as
select *
from
imdb_ijs.movies
;

CREATE UNIQUE INDEX tmp_movies_pk ON imdb_ijs.tmp_movies (id);

# Change column value per row
update imdb_ijs.tmp_movies
set year = year + 1
where
id >= 0  # To bypass safe update mode - beware!
;

# Remove rows
delete from imdb_ijs.tmp_movies
where
id < 100 
;


# Delete using other table (handy in validations)
DELETE m FROM 
imdb_ijs.tmp_movies AS m 
left JOIN 
imdb_ijs.roles AS r
on
m.id=r.movie_id
WHERE r.movie_id is null
and m.id > 0 # bypass safe mode
;

# "Manual insert"
insert into imdb_ijs.tmp_movies values (1000000, 'My Movie!', 2025, 10);

# Insert with a query

insert into  imdb_ijs.tmp_movies
select
id + 10000000
, name
, year + 100
, m.rank + 1.0 # We mean the column, not the function and explain it with the table prefix
from
imdb_ijs.movies as m
;

# All movies with a Superman role
select
name, role, year
from
imdb_ijs.movies as m
join
imdb_ijs.roles as r
on
m.id = r.movie_id
where
lower(role) like '%superman%'
order by name, role
;

# Pair of movies directed by the same director
select
f.name
, s.name
from
imdb_ijs.movies as f
join
imdb_ijs.movies_directors as fmd
on
f.id = fmd.movie_id
join
imdb_ijs.movies_directors as smd
on
fmd.director_id = smd.director_id
join
imdb_ijs.movies as s
on
smd.movie_id = s.id
where
fmd.director_id = 34658
and
f.id <> s.id
order by
f.name
, s.name
;


