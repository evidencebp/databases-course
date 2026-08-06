-- =====================================================================
-- Recommendation ideas - Question 1: Partner actors
-- GitHub: BrianB413
--
-- Companion to Q1_partner_actors_BrianB413.pdf.
-- Run top to bottom against imdb_ijs, MySQL 8.0.40.
-- Each block is followed by the figure it produced, as a comment.
-- =====================================================================


-- =====================================================================
-- Setup
-- =====================================================================

drop table if exists actor_movies;
create table actor_movies as
select distinct actor_id, movie_id
from imdb_ijs.roles;

create index idx_am_actor on actor_movies (actor_id, movie_id);
create index idx_am_movie on actor_movies (movie_id, actor_id);

drop table if exists actor_movie_count;
create table actor_movie_count as
select actor_id, count(*) as movies
from actor_movies
group by actor_id;

create index idx_amc on actor_movie_count (actor_id);

-- 3,431,489 and 817,718
select (select count(*) from actor_movies)      as actor_movies_rows
     , (select count(*) from actor_movie_count) as actor_movie_count_rows;


-- =====================================================================
-- 1.1  Pairs who acted together in at least 3 movies
-- =====================================================================

drop table if exists actor_pairs;
create table actor_pairs as
select
  a.actor_id as actor_1
, b.actor_id as actor_2
, count(*)   as common_movies
from actor_movies as a
join actor_movies as b
  on a.movie_id = b.movie_id
 and a.actor_id < b.actor_id
group by a.actor_id, b.actor_id
having count(*) >= 3;

create index idx_ap on actor_pairs (actor_1, actor_2);

-- 1,100,132
select count(*) as pairs_3_plus_movies from actor_pairs;


-- =====================================================================
-- 1.2  Jaccard above 0.5
-- =====================================================================

drop table if exists partners;
create table partners as
select
  p.actor_1
, p.actor_2
, p.common_movies
, c1.movies as movies_1
, c2.movies as movies_2
, p.common_movies / (c1.movies + c2.movies - p.common_movies) as jaccard
from actor_pairs as p
join actor_movie_count as c1 on p.actor_1 = c1.actor_id
join actor_movie_count as c2 on p.actor_2 = c2.actor_id
where p.common_movies / (c1.movies + c2.movies - p.common_movies) > 0.5;

create index idx_pt on partners (actor_1, actor_2);

-- 8,938, a 99.19% reduction
select count(*) as pairs_after_jaccard from partners;


-- =====================================================================
-- 1.3  Precision, on a random sample
--
-- The sample must be random. Ordering by common_movies would pick the
-- strongest pairs and over-estimate precision.
--
-- order by rand() gives a different draw each run, so the sample is
-- captured into a table. Judging is done on the captured rows, and the
-- shared titles are pulled from the same captured set.
-- =====================================================================

drop table if exists sample10;
create table sample10 as
select p.actor_1, p.actor_2, p.common_movies, p.movies_1, p.movies_2, p.jaccard
from partners as p
order by rand()
limit 10;

select
  concat(a1.first_name,' ',a1.last_name) as actor_1
, concat(a2.first_name,' ',a2.last_name) as actor_2
, s.common_movies
, s.movies_1
, s.movies_2
, round(s.jaccard,3) as jaccard
from sample10 as s
join imdb_ijs.actors as a1 on s.actor_1 = a1.id
join imdb_ijs.actors as a2 on s.actor_2 = a2.id
order by s.common_movies desc;

-- The shared titles for each sampled pair. This is what the judgement
-- rests on: a pair is a partnership only if the shared works are films
-- and the two are actors in them.
select
  concat(a1.first_name,' ',a1.last_name) as actor_1
, concat(a2.first_name,' ',a2.last_name) as actor_2
, m.year
, m.name as film
from sample10 as s
join actor_movies as am1 on am1.actor_id = s.actor_1
join actor_movies as am2 on am2.actor_id = s.actor_2 and am2.movie_id = am1.movie_id
join imdb_ijs.movies as m  on m.id = am1.movie_id
join imdb_ijs.actors as a1 on a1.id = s.actor_1
join imdb_ijs.actors as a2 on a2.id = s.actor_2
order by actor_1, actor_2, m.year;

-- Judgement on the captured draw: 2 of 10 are film acting partnerships.
-- precision = 0.2


-- The same procedure at 50 pairs, for a category breakdown.
-- The category column is filled in from the shared titles. It is a
-- reading of the data, not a field in the database.
drop table if exists sample50;
create table sample50 as
select p.actor_1, p.actor_2, p.common_movies, p.movies_1, p.movies_2, p.jaccard
     , cast(null as char(40)) as category
from partners as p
order by rand()
limit 50;

-- Counts after classification:
--   reality TV                12   24%
--   music act                 11   22%
--   TV series                  8   16%
--   documentary co-subjects    8   16%
--   film ensemble, not a duo   7   14%
--   genuine film partnership   4    8%
-- precision = 4 / 50 = 0.08
select category, count(*) as pairs
from sample50
group by category
order by pairs desc;


-- =====================================================================
-- 1.4  Recall against nominated partnerships
--
-- imdb_ijs stores a roman-numeral suffix on names shared by more than
-- one person, so the primary credit for Ben Affleck is 'Ben (I)' while
-- Matt Damon is plain 'Matt'. Matching either form resolves all names
-- without knowing in advance which spelling each one carries.
-- =====================================================================

drop table if exists known_pair_ids;
create table known_pair_ids as
select
  concat(a1.first_name,' ',a1.last_name) as name_1
, concat(a2.first_name,' ',a2.last_name) as name_2
, least(a1.id, a2.id)    as actor_1
, greatest(a1.id, a2.id) as actor_2
from (
            select 'Sandler'   as l1, 'Adam'    as f1, 'Schneider' as l2, 'Rob'     as f2
  union all select 'Damon',        'Matt',      'Affleck',   'Ben'
  union all select 'Stiller',      'Ben',       'Wilson',    'Owen'
  union all select 'Radcliffe',    'Daniel',    'Grint',     'Rupert'
  union all select 'Vaughn',       'Vince',     'Favreau',   'Jon'
  union all select 'Chan',         'Jackie',    'Tucker',    'Chris'
) as k
join imdb_ijs.actors as a1
  on a1.last_name = k.l1
 and (a1.first_name = k.f1 or a1.first_name = concat(k.f1,' (I)'))
join imdb_ijs.actors as a2
  on a2.last_name = k.l2
 and (a2.first_name = k.f2 or a2.first_name = concat(k.f2,' (I)'));

-- Must return 6. Fewer means a name failed to resolve, which would
-- understate recall for a reason unrelated to the retrieval rule.
select count(*) as rows_found from known_pair_ids;

-- Four further pairs were nominated and then excluded from the
-- denominator: Carrey and Daniels, Bale and Caine, Hill and Tatum,
-- Johnson and Hart. Each shares one film or none in this snapshot, so
-- none can enter actor_pairs and none can test the retrieval rule.

select
  k.name_1
, k.name_2
, coalesce(ap.common_movies, 0) as shared
, round(coalesce(ap.common_movies,0)
        / (c1.movies + c2.movies - coalesce(ap.common_movies,0)), 3) as jaccard
, case when p.actor_1 is not null then 'retrieved' else 'missed' end as status
from known_pair_ids as k
join actor_movie_count as c1 on k.actor_1 = c1.actor_id
join actor_movie_count as c2 on k.actor_2 = c2.actor_id
left join actor_pairs as ap on ap.actor_1 = k.actor_1 and ap.actor_2 = k.actor_2
left join partners    as p  on p.actor_1  = k.actor_1 and p.actor_2  = k.actor_2;

-- recall = 0 / 6


-- =====================================================================
-- 1.6  Alternatives measured
-- =====================================================================

drop table if exists pair_metrics;
create table pair_metrics as
select
  p.actor_1
, p.actor_2
, p.common_movies
, c1.movies as movies_1
, c2.movies as movies_2
, p.common_movies / (c1.movies + c2.movies - p.common_movies) as jaccard
, p.common_movies / least(c1.movies, c2.movies)               as overlap_coef
from actor_pairs as p
join actor_movie_count as c1 on p.actor_1 = c1.actor_id
join actor_movie_count as c2 on p.actor_2 = c2.actor_id;

create index idx_pm on pair_metrics (actor_1, actor_2);

-- Jaccard sweep: 8,938 / 32,330 / 46,911 / 75,060 / 136,998 / 346,614
select '> 0.50' as cutoff, count(*) as pairs from pair_metrics where jaccard > 0.50
union all select '> 0.25', count(*) from pair_metrics where jaccard > 0.25
union all select '> 0.20', count(*) from pair_metrics where jaccard > 0.20
union all select '> 0.15', count(*) from pair_metrics where jaccard > 0.15
union all select '> 0.10', count(*) from pair_metrics where jaccard > 0.10
union all select '> 0.05', count(*) from pair_metrics where jaccard > 0.05;

-- Competing rules: 8,938 / 11,412 / 79,111 / 305,952 / 132,012
select 'jaccard > 0.5' as rule_name, count(*) as pairs from pair_metrics where jaccard > 0.5
union all select 'jaccard >= 0.5', count(*) from pair_metrics where jaccard >= 0.5
union all select 'overlap > 0.5',  count(*) from pair_metrics where overlap_coef > 0.5
union all select 'common >= 5',    count(*) from pair_metrics where common_movies >= 5
union all select 'hybrid',         count(*) from pair_metrics
                                   where common_movies >= 5 and overlap_coef >= 0.15;

-- Recovery of the six reachable pairs: 0, 1, 1, 6, 5
select
  sum(case when m.jaccard > 0.5  then 1 else 0 end) as jaccard_gt_half
, sum(case when m.jaccard >= 0.5 then 1 else 0 end) as jaccard_ge_half
, sum(case when m.overlap_coef > 0.5 then 1 else 0 end) as overlap_gt_half
, sum(case when m.common_movies >= 5 then 1 else 0 end) as common_ge_5
, sum(case when m.common_movies >= 5 and m.overlap_coef >= 0.15 then 1 else 0 end) as hybrid
from known_pair_ids as k
join pair_metrics as m on m.actor_1 = k.actor_1 and m.actor_2 = k.actor_2;


-- =====================================================================
-- Why no ratio can recover the famous duos
--
-- The retrieved population is capped at small filmographies. This is
-- the mechanism behind both the 8% precision and the zero recall.
-- =====================================================================

-- 5,839 (65.3%) / 8,031 (89.9%) / 8,624 (96.5%) / 8,840 (98.9%)
select '<= 5'  as both_actors_at_most, count(*) as pairs
     , round(count(*) / (select count(*) from partners) * 100, 1) as pct
  from partners where movies_1 <= 5  and movies_2 <= 5
union all
select '<= 10', count(*), round(count(*) / (select count(*) from partners) * 100, 1)
  from partners where movies_1 <= 10 and movies_2 <= 10
union all
select '<= 20', count(*), round(count(*) / (select count(*) from partners) * 100, 1)
  from partners where movies_1 <= 20 and movies_2 <= 20
union all
select '<= 50', count(*), round(count(*) / (select count(*) from partners) * 100, 1)
  from partners where movies_1 <= 50 and movies_2 <= 50;

-- 98 pairs, 1.1%, contain even one actor with more than 50 films.
select count(*) as pairs_with_a_prolific_actor
from partners
where movies_1 > 50 or movies_2 > 50;
