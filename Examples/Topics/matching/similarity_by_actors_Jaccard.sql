drop table if exists actors_per_movie;

create table actors_per_movie
as
select
movie_id
, count(distinct actor_id) as actors_num
from
roles
group by
movie_id;


ALTER TABLE actors_per_movie ADD PRIMARY KEY (movie_id);



drop table if exists similarity_by_actors;

create table
similarity_by_actors
as
select
frole.movie_id as fid
, srole.movie_id as sid
, count(distinct frole.actor_id) as common_actors_num
, group_concat(distinct frole.actor_id order by frole.actor_id) as actors
, max(fam.actors_num) as first_movie_actors_num
, max(sam.actors_num) as second_movie_actors_num
,  count(distinct frole.actor_id)/(max(fam.actors_num) + max(sam.actors_num) - count(distinct frole.actor_id)) as Jaccard
from
actors_per_movie as fam
join
roles as frole
on
fam.movie_id = frole.movie_id
join
roles as srole
on
frole.actor_id = srole.actor_id
join
actors_per_movie as sam
on
srole.movie_id = sam.movie_id
where
frole.movie_id != srole.movie_id
and
frole.movie_id < 1000 # NOTE - reduce scope just for a reasonable performance in demonstration. Remove!
and
srole.movie_id < 1000
group by
fid
, sid
having
count(distinct frole.actor_id) >= 3
and
Jaccard > 0.25
;