

drop table if exists imdb_ijs.movies_recommendations;

create table imdb_ijs.movies_recommendations
(base_movie_id int
, recommended_movie_id int
, recommendation int 
, suggested_by varchar(255)
, justification varchar(255)
, comment varchar(255)
);
-- ----------------------------------------
-- Insert GOOD recommendations

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
insert into imdb_ijs.movies_recommendations
with
police as (
  select 245943 as movie_id
  union select 115269
  union select 121019
  union select 319560
  union select 338674
  union select 338708
  union select 152603
  union select 184793
  union select 348599
  union select 298129
)
select 
  b.movie_id, 
  r.movie_id, 
  3, 
  'YUVAL', 
  'Both "police" role movies', 
  null
from 
police as b,
police as r
where 
  b.movie_id != r.movie_id;

insert into imdb_ijs.movies_recommendations
with
Romance as (
  select 14 as movie_id
  union select 95
  union select 152
  union select 166
  union select 184
  union select 263
  union select 264
  union select 270
  union select 283
  union select 302
)
select 
  b.movie_id, 
  r.movie_id, 
  4, 
  'YUVAL', 
  'Both "Romance" genre movies', 
  null
from 
Romance as b,
Romance as r
where 
  b.movie_id != r.movie_id;
select * from imdb_ijs.movies_recommendations;


