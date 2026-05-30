insert into imdb_ijs.movies_recommendations

with Crime_Movies as (
  select 2 as movie_id -- [missing title]
  union select 12 -- $20,000 Carat, The
  union select 20 -- $5,000,000 Counterfeiting Plot, The
  union select 33 -- $windle
  union select 37 -- '24-25' ne vozvrashchayetsya
  union select 53 -- 'A' gai waak juk jaap
  union select 108 -- 'G' Men
  union select 167 -- 'Minagoroshi no uta' yori kenj-yo saraba!
  union select 168 -- 'Ming wang xing' xing dong
  union select 184 -- 'Ne gnstige Gelegenheit
)

select 
  c1.movie_id, 
  c2.movie_id, 
  9, 
  'Gali Davidov', 
  'Crime movies', 
  null
from 
  Crime_Movies as c1,
  Crime_Movies as c2
where 
  c1.movie_id != c2.movie_id;  
  
  insert into imdb_ijs.movies_recommendations

with Doctors_Movies as (
  select 28092 as movie_id -- Bakom jalusin
  union select 70960 -- Corpse Came C.O.D., The
  union select 257744 -- Playing by Heart
  union select 349375 -- V zru krlovsk lsky
  union select 263076 -- Prescription for Murder
  union select 85524 -- Dia  Nosso, O
  union select 263403 -- Prezident i yego vnuchka
  union select 288493 -- Satanic Rites of Dracula, The
  union select 33492 -- Bella Martha
  union select 203481 -- Man Who Could Cheat Death, The
)

select 
  d1.movie_id, 
  d2.movie_id, 
  9, 
  'Gali Davidov', 
  'Medical-themed movies', 
  null
from 
  Doctors_Movies as d1,
  Doctors_Movies as d2
where 
  d1.movie_id != d2.movie_id;



insert into imdb_ijs.movies_recommendations

with Comedy as (
  select 2 as movie_id -- [missing title]
  union select 6 -- $1,000,000 Duck
  union select 8 -- $10,000 Under a Pillow
  union select 11 -- $1000 a Touchdown
  union select 15 -- $30
  union select 18 -- $40,000
),
Horror as (
  select 62 as movie_id -- 'Babicky dobjejte presne!'
  union select 73 -- 'burbs, The
  union select 117 -- 'Halloween 4' Final Cut
  union select 118 -- 'Halloween' Unmasked 2000
  union select 133 -- 'It's Alive!'
  union select 156 -- 'Manos' the Hands of Fate
  union select 230 -- 'Salem's Lot
  union select 262 -- 'Til Death Do Us Part
  union select 302 -- 'Zmeiny istochnik
  union select 337 -- ...a tutte le auto della polizia
)

select 
  c.movie_id as base_movie_id,
  h.movie_id as recommended_movie_id,
  1 as recommendation,
  'Gali Davidov' as suggested_by,
  'Too different in mood and theme' as justification,
  null as comment
from 
  Comedy c,
  Horror h;

insert into imdb_ijs.movies_recommendations

with
Family as (
  select 6 as movie_id -- $1,000,000 Duck
  union select 10 -- $100,000 Pyramid, The
  union select 73 -- 'burbs, The
  union select 124 -- 'Hyp-Nut-Tist', The
  union select 130 -- 'Imhar', une lgende
  union select 140 -- 'k vergeet u nooit, venti
),
Adults as (
  select 24 as movie_id -- $50,000 Climax Show, The
  union select 535 -- 00Sex im Auge des Orkans
  union select 621 -- 10 Magnificent Blondes
  union select 743 -- 100% Amateur - Vol. 36
  union select 745 -- 100% Amateur 44
  union select 746 -- 100% Amateur 47
  union select 754 -- 100% Blowjobs 12
  union select 755 -- 100% Blowjobs 13
  union select 759 -- 100% Blowjobs 17
  union select 760 -- 100% Blowjobs 18
)

select
  f.movie_id as base_movie_id,
  a.movie_id as recommended_movie_id,
  1 as recommendation,
  'Gali Davidov' as suggested_by,
  'Target audience mismatch' as justification,
  null as comment
from
  Family f,
  Adults a;
