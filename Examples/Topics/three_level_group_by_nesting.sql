# Actors careers
select
actor_id
, group_concat(distinct role order by role) as career_roles
, count(*) as roles_number
from
gs_roles
group by
actor_id
;

# Actors per career
select
career_roles
, count(*) as actors
from
(
select
actor_id
, group_concat(distinct role order by role) as career_roles
from
gs_roles
group by
actor_id
) as careers
group by
career_roles
order by career_roles desc
;


# Actors per career roles distribution
# I know, it is rather sick and confused me too.
# However, it is extremely useful in some cases.
# Hide the subqueries in views to enjoy the comprehension benefits of abstraction magic.
select
actors
, count(*) as career_roles_with_the_acot_num_cnt
from
(
select
career_roles
, count(*) as actors
from
(
select
actor_id
, group_concat(distinct role order by role) as career_roles
from
gs_roles
group by
actor_id
) as careers
group by
career_roles
) as actors_per_career
group by
actors
order by
actors ;