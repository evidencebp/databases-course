# All Hitchcock’s movies with an 'Assassin' (consider a movie with two of them as a corner case).
from 
imdb_ijs.directors as d
join
imdb_ijs.movies_directors as md
on
d.id = md.director_id
join
imdb_ijs.movies as m
on
md.movie_id = m.id
join
imdb_ijs.roles as r
on
m.id = r.movie_id
where 
last_name = 'Hitchcock' 
and first_name = 'Alfred (I)'
and role = 'Assassin'
order by m.id, role
;


# All movies with a 'detective', 'murderer' (case insensitive)
select distinct m.*
from
imdb_ijs.movies as m
join
imdb_ijs.roles as detective
on
m.id = detective.movie_id
join
imdb_ijs.roles as murderer
on
m.id = murderer.movie_id
where
lower(detective.role) = 'detective'
and lower(murderer.role) = 'murderer'
order by name, year
;


# All actors that played with Marilyn Monroe
Select other.*
from
imdb_ijs.actors as monroe
join
imdb_ijs.roles as monroe_roles
on
monroe.id = monroe_roles.actor_id
join
imdb_ijs.roles as others_roles
on
monroe_roles.movie_id = others_roles.movie_id
join
imdb_ijs.actors as other
on
others_roles.actor_id = other.id
where
monroe.first_name = 'Marilyn'
and monroe.last_name = 'Monroe'
order by other.first_name, other.last_name
;

# Copy directors to directors_tmp and delete all those that did not direct any movie
DROP TABLE IF EXISTS imdb_ijs.tmp_directors; # Drop is important for reruns
CREATE TABLE imdb_ijs.tmp_directors
as
select *
from
imdb_ijs.directors
;

CREATE UNIQUE INDEX tmp_directors_pk ON imdb_ijs.tmp_directors (id);

DELETE d FROM 
imdb_ijs.tmp_directors AS d
left JOIN 
imdb_ijs.movies_directors AS md
on
d.id=md.director_id
WHERE md.director_id is null
and d.id > 0 # bypass safe mode
;

