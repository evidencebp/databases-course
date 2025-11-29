use imdb_ijs;

# Number of movies

# Moveis per genre
select 
count(distinct movie_id) as movies
from
movies_genres
;


# Movies per genre
select 
genre
, count(distinct movie_id) as movies
from
movies_genres
group by
genre
;

# Using "over" we can compute aggregate on the entire dataset or partition of it
select
genre
, sum(movies) over(partition by genre) AS genre_movies
, sum(movies) over(partition by genre)/sum(movies) over() as genre_probability
, sum(movies) over() as movies
from (
select 
genre
, count(distinct movie_id) as movies
from
movies_genres
group by
genre
) as inSql
order by genre_movies desc;

# Roles per actor
select
actor_id
, count(*) as actor_roles
from
roles
group by
actor_id
order by 
actor_roles desc, actor_id
;


# Adding position
select 
row_number() over () as num
, inSql.*
from 
(
select
actor_id
, count(*) as actor_roles
from
roles
group by
actor_id
order by 
actor_roles desc, actor_id
) as inSql
;



# Adding relative position
select 
row_number() over w as num
, rank() over w as actor_rank
, percent_rank() over w as percentile
, ntile(10) over w as decile
, inSql.*
from 
(
select
actor_id
, count(*) as actor_roles
from
roles
group by
actor_id
) as inSql
WINDOW w AS (ORDER BY actor_roles desc, actor_id)
;


# Director over time
select
year
, m.rank
from
movies_directors as md
join
movies as m
on
md.movie_id = m.id
where director_id = 22
order
 by director_id, year
;

# Rank change from previous movies
select
year
, m.rank
, lag(m.rank)        OVER w AS 'lag'
, lead(m.rank)       OVER w AS 'lead'
, m.rank - lag(m.rank)  OVER w AS 'lag diff'
, m.rank - lead(m.rank) OVER w AS 'lead diff'
FROM 
movies_directors as md
join
movies as m
on
md.movie_id = m.id
where director_id = 22
window w as (order by year);

# Rank change for all directors
select
director_id
, year
, m.rank
, lag(m.rank)        OVER w AS rank_lag
, lead(m.rank)       OVER w AS rank_lead
, m.rank - lag(m.rank)  OVER w AS lag_diff
, m.rank - lead(m.rank) OVER w AS lead_diff
FROM 
movies_directors as md
join
movies as m
on
md.movie_id = m.id
window w as (partition by director_id  order by director_id, year);


# Average rank change
select 
avg(lag_diff)
from
(
select
director_id
, year
, m.rank
, lag(m.rank)        OVER w AS rank_lag
, lead(m.rank)       OVER w AS rank_lead
, m.rank - lag(m.rank)  OVER w AS lag_diff
, m.rank - lead(m.rank) OVER w AS lead_diff
FROM 
movies_directors as md
join
movies as m
on
md.movie_id = m.id
window w as (partition by director_id  order by director_id, year)
) as inSql
;