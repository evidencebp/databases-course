use imdb_ijs;

-- Q.1
SELECT * FROM movies
WHERE movies.rank >= 9;

-- Q.2 
-- -- pt. 1+2
select distinct `role` from roles
where lower(`role`) like '%him%'; 

-- -- pt.3 + 4
select a.id as actor_id,
concat(a.first_name,' ', a.last_name,' as ', r.role) as 'actor/role',
m.name
from roles as r, actors as a, movies as m
where r.actor_id = a.id
and r.movie_id = m.id
and lower(r.`role`) LIKE '%himself%' 
order by a.id;

-- Q.3
-- -- a
select *, length(name) as name_length
from movies
where length(name) >95
order by length(name)desc;

-- -- b
select * from movies 
where length(name) = 100
and name like '%(%'
and right(`name`,1) != ')';


-- Q.4
select first_name, last_name from actors
where first_name regexp '[^\\p{L} ()''.0-9-]'
or first_name like ' %and%';