drop table if exists short_roles;

create table
short_roles
as
select *
from
roles
where
movie_id < 10000
;

drop table if exists movies_with_common_roles;

create table
movies_with_common_roles
as
select
f.movie_id as fid
, s.movie_id as sid
, count(distinct f.role) as common_roles_num
, group_concat(distinct f.role order by f.role) as common_roles
from
short_roles as f
join
short_roles as s
on
f.role = s.role
where
f.role not in ('', 'Herself','Himself','Himself - Host'
, 'Narrator', 'Host', 'Themselves', 'Herself - Presenter'
'Himself - Presenter', 'Host/Narrator', 'extra') # Remove roles that do not indicate symmetry
# once stable removal in the short roles table
                                                        # creation will improve running time
and
f.movie_id != s.movie_id # Remove reflexive pair, keep symmetric ones
group by
f.movie_id
, s.movie_id
having
count(distinct f.role) >= 3 # Increasing the threshold will increase the precision and reduce the recall
# Choose your favorite tradeoff and use the gold standard to tune.
;

# Observing the top matches.
# This allow to remove some based on human judgment or to check their predictive performance
# using the gold standard
select
common_roles
, count(*) as matches
from
movies_with_common_roles
group by
common_roles
order by matches desc
;

# Clean up
drop table if exists short_roles;
drop table if exists movies_with_common_roles;
