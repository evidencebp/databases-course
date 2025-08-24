# Aggregations
select
count(*) as cnt
, count(distinct name) as movies_names
, max(m.rank) as rank_max
, min(m.rank) as rank_min
, avg(m.rank) as rank_avg
, std(m.rank) as rank_std
, avg(if(m.rank >= 7,1,0)) as high_rank_prob
from
imdb_ijs.movies as m
;

# Grouping allows to split row by columns and aggregate them
select
year
, count(*) as cnt
, count(distinct name) as movies_names
, avg(m.rank) as rank_avg
, avg(if(m.rank >= 7,1,0)) as high_rank_prob
from
imdb_ijs.movies as m
group by year
order by year
;

select
if(m.rank >= 7,1,0) as high_rank # grouping by a function
, count(*) as cnt
, count(distinct name) as movies_names
, avg(m.rank) as rank_avg
, avg(year) 
from
imdb_ijs.movies as m
group by high_rank
order by high_rank
;



# Actors by ranking
select
first_name
, last_name
, count(distinct movie_id) as movies
, avg(m.rank) as rank_avg
, avg(if(m.rank >= 7,1,0)) as high_rank_prob
, group_concat(m.name) as movies
from
imdb_ijs.actors as a
join
imdb_ijs.roles as r
on
a.id = r.actor_id
join
imdb_ijs.movies as m
on
r.movie_id = m.id
group by 
first_name
, last_name
having
count(distinct movie_id) >= 10
order by rank_avg desc
;

# Movies per actor
select
actor_id
, count(distinct movie_id) as movies
from
imdb_ijs.roles
group by 
actor_id
;

# Movies per actor, with those that never played (there are no such actors)
select
a.*
, ifnull(movies, 0) as movies
from
imdb_ijs.actors as a
left join (
select
actor_id
, count(distinct movie_id) as movies
from
imdb_ijs.roles
group by 
actor_id
) as movies_per_actor
on
a.id = movies_per_actor.actor_id
order by 
movies desc
;

# Movies per actor distribution
select movies
, count(*) as actors
from (
select
actor_id
, count(distinct movie_id) as movies
from
imdb_ijs.roles
group by 
actor_id ) as inSql
group by movies
order by movies
; 

# Movies per actor distribution, with zero movies 
# Structured version, components are independent
select movies
, count(*) as actors
from (
select
a.*
, ifnull(movies, 0) as movies
from
imdb_ijs.actors as a
left join (
select
actor_id
, count(distinct movie_id) as movies
from
imdb_ijs.roles
group by 
actor_id
) as movies_per_actor
on
a.id = movies_per_actor.actor_id

) as inSql # Only the inner query is changed
group by movies
order by movies
; 

# Movies per actor distribution, with zero movies 
# Simpler version, left join is inside
select movies
, count(*) as actors
from (
select
actor_id
, count(distinct movie_id) as movies
from
imdb_ijs.actors as a
left join
imdb_ijs.roles as r
on
a.id = r.actor_id
group by 
actor_id
) as movies_per_actor
group by movies
order by movies
; 

# Movies pairs with at least 3 common actors
DROP TABLE IF EXISTS imdb_ijs.movie_pairs_by_actors; # Drop is important for reruns
create table imdb_ijs.movie_pairs_by_actors
as
select
f.movie_id as fid
, s.movie_id as sid
, count(distinct f.actor_id) as actors
from
imdb_ijs.roles as f
join
imdb_ijs.roles as s
on
f.actor_id = s.actor_id
group by 
fid
, sid
having
count(distinct f.actor_id) >= 3
;

# In class exercises

# Number of movies per role
# (Answer has some "decorations")
# Please see that you can explain the possible reasons to difference in the aggregations
Select
r.role
, count(*) as cnt
, count(distinct actor_id) as actors
, count(distinct movie_id) as movies
from
imdb_ijs.roles as r
group by 
r.role
order by cnt desc
limit 200
;

# Movies pairs of the same director
Select
d.first_name
, d.last_name
, fm.name
, sm.name
from
movies as fm
join
imdb_ijs.movies_directors as fmd
on
fm.id = fmd.movie_id
join
imdb_ijs.movies_directors as smd
on
fmd.director_id = smd.director_id
join
imdb_ijs.movies as sm
on
smd.movie_id = sm.id
join
imdb_ijs.directors as d
on
fmd.director_id = d.id
where
fmd.movie_id != smd.movie_id # Avoid reflexiveness
and
fmd.movie_id > smd.movie_id # No symmetry
order by
d.first_name, d.last_name, fm.name, sm.name
;


# Movies of director distribution (ignore directors without movies)
select
movies
, count(*) as directors
from
(Select 
director_id
, count(distinct movie_id) as movies
from
imdb_ijs. movies_directors as md
group by
director_id) as inSql
group by movies
order by movies
;


