# personal_movies_ranking has defences that protect you from inserting improper data.
# In case that you have already created improper data (that should not happen),
# you can create the table without protection, insert your data, and identify the violaitons.
# After fixing your data, run this script again on the fixed data.
# Then, recreate personal_movies_rankingwith the original protection and verify that your code is correct.

drop table if exists personal_movies_ranking;

create table personal_movies_ranking
(movie_id int
, recommendation int
, suggested_by varchar(255)
, justification varchar(255)
, comment varchar(255)
);

select *
, (recommendation is null or recommendation not between 1 and 10) as recommendation_violition
, suggested_by is null as suggested_by_violition
, (justification is null or length(justification) < 10) as justification_violition
from
personal_movies_ranking
where
(recommendation is null or recommendation not between 1 and 10)
or suggested_by is null
or (justification is null or length(justification) < 10)
order by movie_id
;

# Number of recommendations per person
select
suggested_by as f
, count(*)
from
personal_movies_ranking
group by f
order by f
;

# Duplicated movies
select
movie_id as f
, count(*)
from
personal_movies_ranking
group by f
having count(*) > 1
order by f
;

# Recommended movies not in movies table
select
p.movie_id
from
personal_movies_ranking as p
left join
movies as m
on
p.movie_id = m.id
where
m.id is null
;