insert into imdb_ijs.movies_recommendations
with
Harry_Potter as (
  select 139650 as movie_id
  union select 139652
  union select 139655
  union select 139657
  union select 139656
  union select 139658
)
select 
  b.movie_id, 
  r.movie_id, 
  9, 
  'Maya', 
  'Both Harry Potter movies', 
  null
from 
  Harry_Potter as b,
  Harry_Potter as r
where 
  b.movie_id != r.movie_id;
select * from imdb_ijs.movies_recommendations;


insert into imdb_ijs.movies_recommendations
with Quentin_Tarantino
 as (
  select 118367 as movie_id
  union select 159665
  union select 164572
  union select 176711
  union select 176712
  union select 223710
  union select 267038
  union select 276217
  union select 387728
  union select 393538
)
select 
  b.movie_id, 
  r.movie_id, 
  8, 
  'Maya', 
  'Both movies directed by Quentin Tarantino', 
null
from 
 Quentin_Tarantino as b,
  Quentin_Tarantino as r
where 
  b.movie_id != r.movie_id;
  
insert into imdb_ijs.movies_recommendations values
(62 ,2 , 2
, 'Maya Prashker'
, 'Genres are completely different'
, null
);
insert into imdb_ijs.movies_recommendations values
(73 ,6 , 2, 
'Maya Prashker', '
Genres are completely different', null);

insert into imdb_ijs.movies_recommendations
 values
(117 ,8 , 2, 'Maya Prashker',
 'Genres are completely different', null);
insert into imdb_ijs.movies_recommendations 
values
(118 ,11 , 2, 'Maya Prashker',
 'Genres are completely different', null);
insert into imdb_ijs.movies_recommendations 
values
(133 ,15 , 2, 'Maya Prashker', 
'Genres are completely different', null);
insert into imdb_ijs.movies_recommendations
 values
(156 ,18 , 2, 
'Maya Prashker', 'Genres are completely different', null);
insert into imdb_ijs.movies_recommendations
 values
(230 ,21 , 2, 'Maya Prashker', 
'Genres are completely different', null);
insert into imdb_ijs.movies_recommendations 
values
(262 ,28 , 2, 'Maya Prashker', 
'Genres are completely different', null);
insert into imdb_ijs.movies_recommendations
 values
(302 ,29 , 2, 'Maya Prashker', 
'Genres are completely different', null);
insert into imdb_ijs.movies_recommendations
 values
(337 ,35 , 2, 'Maya Prashker', 
'Genres are completely different', null);
insert into imdb_ijs.movies_recommendations 
values
(62 ,6 , 2, 'Maya Prashker', 
'Genres are completely different', null);

insert into imdb_ijs.movies_recommendations
 values
(73 ,15 , 2, 'Maya Prashker', 
'Genres are completely different', null);

insert into imdb_ijs.movies_recommendations
 values
(117 ,2 , 2, 'Maya Prashker', 
'Genres are completely different', null);

insert into imdb_ijs.movies_recommendations 
values
(118 ,35 , 2, 'Maya Prashker', 
'Genres are completely different', null);

insert into imdb_ijs.movies_recommendations 
values
(133 ,28 , 2, 'Maya Prashker',
 'Genres are completely different', null);

insert into imdb_ijs.movies_recommendations 
values
(156 ,11 , 2, 'Maya Prashker', 
'Genres are completely different', null);

insert into imdb_ijs.movies_recommendations 
values
(230 ,29 , 2, 'Maya Prashker',
 'Genres are completely different', null);

insert into imdb_ijs.movies_recommendations
values
(262 ,8 , 2, 'Maya Prashker',
 'Genres are completely different', null);

insert into imdb_ijs.movies_recommendations
 values
(302 ,18 , 2, 'Maya Prashker',
 'Genres are completely different', null);

insert into imdb_ijs.movies_recommendations
 values
(337 ,21 , 2, 'Maya Prashker', 
'Genres are completely different', null);

insert into imdb_ijs.movies_recommendations values
(62 ,11 , 2, 'Maya Prashker', 'Genres are completely different', null);

insert into imdb_ijs.movies_recommendations values
(73 ,2 , 2, 'Maya Prashker', 'Genres are completely different', null);

insert into imdb_ijs.movies_recommendations values
(117 ,6 , 2, 'Maya Prashker', 'Genres are completely different', null);

insert into imdb_ijs.movies_recommendations values
(118 ,15 , 2, 'Maya Prashker', 'Genres are completely different', null);

insert into imdb_ijs.movies_recommendations values
(133 ,6 , 2, 'Maya Prashker', 'Genres are completely different', null);

insert into imdb_ijs.movies_recommendations values
(156 ,2 , 2, 'Maya Prashker', 'Genres are completely different', null);

insert into imdb_ijs.movies_recommendations values
(230 ,35 , 2, 'Maya Prashker', 'Genres are completely different', null);

insert into imdb_ijs.movies_recommendations values
(262 ,29 , 2, 'Maya Prashker', 'Genres are completely different', null);

insert into imdb_ijs.movies_recommendations values
(302 ,21 , 2, 'Maya Prashker', 'Genres are completely different', null);

insert into imdb_ijs.movies_recommendations values
(337 ,18 , 2, 'Maya Prashker', 'Genres are completely different', null);

insert into imdb_ijs.movies_recommendations values
(62 ,15 , 2, 'Maya Prashker', 'Genres are completely different', null);

insert into imdb_ijs.movies_recommendations values
(73 ,8 , 2, 'Maya Prashker', 'Genres are completely different', null);

insert into imdb_ijs.movies_recommendations values
(117 ,11 , 2, 'Maya Prashker', 'Genres are completely different', null);

insert into imdb_ijs.movies_recommendations values
(118 ,2 , 2, 'Maya Prashker', 'Genres are completely different', null);

insert into imdb_ijs.movies_recommendations values
(133 ,11 , 2, 'Maya Prashker', 'Genres are completely different', null);

insert into imdb_ijs.movies_recommendations values
(156 ,29 , 2, 'Maya Prashker', 'Genres are completely different', null);

insert into imdb_ijs.movies_recommendations values
(230 ,15 , 2, 'Maya Prashker', 'Genres are completely different', null);

insert into imdb_ijs.movies_recommendations values
(262 ,35 , 2, 'Maya Prashker', 'Genres are completely different', null);

insert into imdb_ijs.movies_recommendations values
(302 ,2 , 2, 'Maya Prashker', 'Genres are completely different', null);

insert into imdb_ijs.movies_recommendations values
(337 ,28 , 2, 'Maya Prashker', 'Genres are completely different', null);

