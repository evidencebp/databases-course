# Movies pairs with at least 3 common roles, and the roles (concatenated)
select 
r1.movie_id
, max(m1.name) # We group by id since it is a PK, we get name by max since id has one name anyway
, r2.movie_id
, max(m2.name) 
, count(distinct r1.role) as roles_num
, group_concat(r1.role) as roles
from
imdb_ijs.movies as m1
join
imdb_ijs.roles as r1
on
m1.id = r1.movie_id
join
imdb_ijs.roles as r2
on
r1.role = r2.role
join
imdb_ijs.movies as m2
on
r2.movie_id = m2.id
group by
r1.movie_id
, r2.movie_id
having roles >= 10
;

# Actors per movie distribution, with zero actors
select actors
, count(*) as movies
from (
select
m.*
, ifnull(actors, 0) as actors
from
imdb_ijs.movies as m
left join (
select
movie_id
, count(distinct actor_id) as actors
from
imdb_ijs.roles
group by 
movie_id
) as actors_per_movie
on
m.id = actors_per_movie.movie_id
) as inSql
group by actors
order by actors
; 
