# Movies per actor distribution (Known example)
select movies
, count(*) as actors
from (
select
actor_id
, count(distinct movie_id) as movies
from
imdb_ijs.roles
group by actor_id ) as inSql
group by movies 
order by movies
;

# Subquery in condition
# Actors that did not play in any comedy
Select *
From imdb_ijs.actors
Where id not in 
(select actor_id from imdb_ijs.roles as r
Join imdb_ijs.movies_genres as mg
on r.movie_id = mg.movie_id
Where genre = 'Comedy'
) #comedy_actors

# Actors that did not play in any comedy
# Done properly...
Select *
From 
imdb_ijs.actors as a 
left join
(select actor_id
from imdb_ijs.roles as r
Join 
imdb_ijs.movies_genres as mg
on 
r.movie_id = mg.movie_id
Where genre = 'Comedy') as comedy_actors
on a.id = comedy_actors.actor_id
Where actor_id is null
;

# Creating a view
drop view if exists imdb_ijs.comedies;

create view 
imdb_ijs.comedies
as
select * 
from
imdb_ijs.movies_genres as mg
where
genre = 'Comedy';

# Actors that did not play in any comedy
# Done properly...And with a view
Select *
From 
imdb_ijs.actors as a 
left join
(select actor_id
from imdb_ijs.roles as r
Join 
imdb_ijs.comedies as c
on 
r.movie_id = c.movie_id) as comedy_actors
on a.id = comedy_actors.actor_id
Where actor_id is null
;

# Movies per actor with probabilities
drop table if exists imdb_ijs.movies_per_actor;

create table 
imdb_ijs.movies_per_actor
as
select
actor_id
, count(distinct movie_id) as movies
, 0.000000001 as prob
from
imdb_ijs.roles
group by 
actor_id
; 
CREATE UNIQUE INDEX movies_per_actor_pk ON imdb_ijs.movies_per_actor (actor_id);


drop table if exists imdb_ijs.tmp;

create table 
imdb_ijs.tmp
as
select 
count(*) as all_movies
from 
imdb_ijs.movies
;

update imdb_ijs.movies_per_actor
join imdb_ijs.tmp
on True # Usually there will be a "REAL" join here. We have only one row in tmp
set imdb_ijs.movies_per_actor.prob = 
1.0*imdb_ijs.movies_per_actor.movies/imdb_ijs.tmp.all_movies # the 1.0 is used to force real division
where actor_id > 0
;


select *
from imdb_ijs.movies_per_actor
;

drop table if exists imdb_ijs.tmp; # clean up


# In class exercises

# A view of pairs of movies of the same director
drop view if exists imdb_ijs.moviea_pairs_by_director;

create view 
imdb_ijs.moviea_pairs_by_director
as
select
fmd.movie_id as first_movie_id
, smd.movie_id as second_movie_id
, fmd.director_id
from
imdb_ijs.movies_directors as fmd
join
imdb_ijs.movies_directors as smd
on
fmd.director_id = smd.director_id
;

# Westerns without cowboys
select mg.movie_id 
from
imdb_ijs.movies_genres as mg
left join
imdb_ijs.roles as r
on
mg.movie_id = r.movie_id and r.role = 'Cowboy'
where
genre = 'Western'
and
r.movie_id is null;

# Actors per movie with probabilities
drop table if exists imdb_ijs.actors_per_movie;

create table 
imdb_ijs.actors_per_movie
as
select
movie_id
, count(distinct actor_id) as actors
, 0.000000001 as prob
from
imdb_ijs.roles
group by 
movie_id
; 
CREATE UNIQUE INDEX actors_per_movie_pk ON imdb_ijs.actors_per_movie (movie_id);


drop table if exists imdb_ijs.tmp;

create table 
imdb_ijs.tmp
as
select 
count(*) as all_actors
from 
imdb_ijs.actors
;

update imdb_ijs.actors_per_movie
join imdb_ijs.tmp
on True # Usually there will be a "REAL" join here. We have only one row in tmp
set imdb_ijs.actors_per_movie.prob = 
1.0*imdb_ijs.actors_per_movie.actors/imdb_ijs.tmp.all_actors # the 1.0 is used to force real division
where movie_id > 0
;


select *
from imdb_ijs.actors_per_movie
;

drop table if exists imdb_ijs.tmp; # clean up

# And now, directly...
drop table if exists imdb_ijs.actors_per_movie;

create table 
imdb_ijs.actors_per_movie
as
select
movie_id
, count(distinct actor_id) as actors
, 1.0*count(distinct actor_id)/max(tmp.all_actors) as prob # MAX is needed as aggregation due to group by
from
imdb_ijs.roles,
(select 
count(*) as all_actors
from 
imdb_ijs.actors) as tmp
group by 
movie_id
; 
