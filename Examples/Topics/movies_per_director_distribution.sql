
# Movies per director
select
director_id
, count(*) as movies_per_director
from 
movies_directors
group by
director_id
;


# Movies per director distribution
select
movies_per_director
, count(*) as directors
from
(
	select
	director_id
	, count(*) as movies_per_director
	from 
	movies_directors
	group by
	director_id
) as inSql
group by
movies_per_director
order by 
movies_per_director
;

# Add possible directors that never directed to the distribution
# Movies per director distribution
# Why don't we get directors with zero movies?
select
movies_per_director
, count(*) as directors
from
(
	select
	director_id
	, count(*) as movies_per_director
	from
	directors as d
	left join 
	movies_directors as md
	on 
	d.id = md.director_id
	group by
	director_id
) as inSql
group by
movies_per_director
order by 
movies_per_director
;

# Note the importance of left vs. right side
select
movies_per_director
, count(*) as directors
from
(
	select
	d.id
	, count(distinct md.movie_id) as movies_per_director
	from
	directors as d
	left join 
	movies_directors as md
	on 
	d.id = md.director_id
	group by
	d.id
) as inSql
group by
movies_per_director
order by 
movies_per_director
;
