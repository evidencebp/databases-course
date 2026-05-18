
-- Insert GOOD recommendations
-- ----------------------------------------

insert into imdb_ijs.movies_recommendations
with
ClaudioAbbado_Conductor as (
  select 24339 as movie_id
  union select 129042
  union select 141779
  union select 148614
  union select 197927
)
select 
  b.movie_id, 
  r.movie_id, 
  10, 
  'YUVAL', 
  'Both "Claudio Abbado" as Conductor in different movies from the music genre', 
  'genre - music'
from 
ClaudioAbbado_Conductor as b,
ClaudioAbbado_Conductor as r
where 
  b.movie_id != r.movie_id;
select * from imdb_ijs.movies_recommendations;


insert into imdb_ijs.movies_recommendations
with
BudAbbott_Himself as (
  select 660 as movie_id
  union select 209659
  union select 210615
  union select 231053
  union select 255337
  union select 291323
  union select 291355 
  union select 291389 
)
select 
  b.movie_id, 
  r.movie_id, 
  9, 
  'YUVAL', 
  'Both "Bud Abbott" as Conductor in different movies from the "Short" genre', 
  'genre - short'
from 
BudAbbott_Himself as b,
BudAbbott_Himself as r
where 
  b.movie_id != r.movie_id;
 
insert into imdb_ijs.movies_recommendations
with
superman_action as (
  select 2986 as movie_id
  union select 3261
  union select 58160
  union select 220245
  union select 253010
  union select 353772
)
select 
  b.movie_id, 
  r.movie_id, 
  9, 
  'YUVAL', 
  'Both "superman" movies in the "action" genre', 
  'genre - action'
from 
superman_action as b,
superman_action as r
where 
  b.movie_id != r.movie_id;

-- Insert BAD recommendations
-- --------------------------------------------------
insert into imdb_ijs.movies_recommendations
with
police as (
  select 245943 as movie_id
  union select 115269
  union select 121019
  union select 184793
  union select 179428
  union select 373371
  union select 181357
  union select 341228
)
select 
  b.movie_id, 
  r.movie_id, 
  3, 
  'YUVAL', 
  'Both "police" role movies are in different genres', 
  null
from 
police as b,
police as r
where 
  b.movie_id != r.movie_id;



insert into imdb_ijs.movies_recommendations
with
different as (
  select 6 as movie_id
  union select 73
  union select 15
  union select 24
  union select 31
  union select 87
  union select 18
)
select 
  b.movie_id, 
  r.movie_id, 
  1, 
  'YUVAL', 
  'Both are movies from the database', 
  'different year, different genr,e and different rank'
from 
different as b,
different as r
where 
  b.movie_id != r.movie_id;
